#%%
import read_data
import json
import csv

# read in data
factories = read_data.read_cost_values("../data/factories.csv")
respirators = read_data.read_cost_values("../data/respirators.csv")
ppe = read_data.read_cost_values("../data/ppe.csv")
resources = read_data.read_list("../data/resources.csv")
hospitals = read_data.read_demand("../data/hospitals.csv")
shipping = read_data.read_shipping("../data/shipping.csv")



# Adds dummy variable to ship from (accounts for any supply discrepencies)
def add_dummy_shipping(shipping,factories,hospitals,large=1000000000):
    all_locations = [k for k in factories.keys() if k != "DUMMY_RESERVE"] + [h[0] for h in hospitals]
    dummy_shipping = [["DUMMY_RESERVE",location,large,large] for location in all_locations]
    return shipping + dummy_shipping

def add_dummy_factory(factories):
    return {**factories,**{"DUMMY_RESERVE":{}}}

factories = add_dummy_factory(factories)
shipping = add_dummy_shipping(shipping,factories,hospitals)


# General helper functions
def get_list_equipment(ppe=ppe,respirators=respirators):
    return [k for k in ppe.keys()] + [k for k in respirators.keys()]

def get_all_materials(resources=resources):
    return resources + get_list_equipment()

def get_n_days(hospitals=hospitals):
    return len(hospitals[0])

def get_all_places(factories=factories,hospitals=hospitals):
    return [k for k in factories.keys()] + [r[0] for r in hospitals]



# sets up decision variables
def gen_decision_variables(factories,materials,hospitals,shipping):
    days = get_n_days()
    places = get_all_places()

    resp_made = ["x_{}_{}_{}".format(r,f,day) for day in range(1,days) for f,mats in factories.items() for r in mats.keys() if "resp" in r]
    ppe_made = ["y_{}_{}_{}".format(r,f,day) for day in range(1,days) for f,mats in factories.items() for r in mats.keys() if "ppe" in r]
    mat_onhand = ["M_{}_{}_{}".format(mat,place,day) for mat in materials for place in places for day in range(1,days)]
    total_shipped = ["s_{}->{}_{}".format(start,end,day) for day in range(1,days) for start,end,cap,cost in shipping]
    shipped = ["z_{}_{}->{}_{}".format(m,start,end,day) for day in range(1,days) for start,end,cap,cost in shipping for m in materials]
    dummy0 = ["z_{}_{}->{}_0".format(m,start,end) for start,end,cap,cost in shipping for m in materials if start == "DUMMY_RESERVE"]

    return resp_made + ppe_made + shipped + total_shipped + mat_onhand + dummy0




# sets up obj function
def gen_obj_fxn(decision_vars,shipping):
    total_shipped = [i for i in decision_vars if i[0] == 's']
    shipping_costs = {"s_{}->{}".format(start,end):cost for start,end,cap,cost in shipping}
    return {dv:shipping_costs[dv[:dv.rfind("_")]] for dv in total_shipped}




# establish the upper bounds for manufacturing resources
def manufacturing_upper_bounds(factories,resources):
    days = get_n_days()
    return {"manufacturing_{}_{}_{}".format(material,factory,day): 0 for material in resources for factory in factories.keys() if factory != "DUMMY_RESERVE" for day in range(1,days)}

# establish upper bounds for hospital demand
def demand_upper_bounds(hospitals,ppe,respirators):
    days = get_n_days()
    demand = {h[0]:h for h in hospitals}
    return {"demand_{}_{}_{}".format(equipment,place,day): -demand[place][day] for place in demand.keys() for day in range(1,days) for equipment in ["ppe","respirators"]}

# upper bound for material available to ship
def availability_upper_bounds(resources):
    places = get_all_places()
    days = get_n_days()
    materials = get_all_materials()
    equipment = get_list_equipment()

    return {"availability_{}_{}_{}".format(material,place,day): 0 for place in places for day in range(1,days) for material in materials}
    
# establish upper bounds for shipping capacity
def shipping_cap_upper_bounds(shipping):
    days = get_n_days()
    capacities = {"{}->{}".format(start,end):cap for start,end,cap,cost in shipping}
    return {"capacities_{}_{}".format(k,day):v for k,v in capacities.items() for day in range(1,days)}

# equalities for next day on-hand resources/materials
def onhand_equalities(factories,materials):
    places = get_all_places()
    days = get_n_days()
    equipment = get_list_equipment()
    return {"onhand_{}_{}_{}".format(material,place,day): factories[place][material] if day == 1 and place in factories.keys() and material in resources and material in factories[place].keys() else 1000000 if place == "DUMMY_RESERVE" and material in equipment else 0 for material in materials for place in places for day in range(1,days)}

# equalities for what was shipped over edge
def total_shipped_equalities(shipping):
    days = get_n_days()
    return {"shipped_{}->{}_{}".format(start,end,day):0 for day in range(1,days) for start,end,cap,cost in shipping}

# all upper bounds
def gen_upper_bounds(factories,resources,hospitals,materials,shipping):
    return {**manufacturing_upper_bounds(factories,resources),
    **demand_upper_bounds(hospitals,materials,resources),
    **availability_upper_bounds(resources),
    **shipping_cap_upper_bounds(shipping)}

# all equalities
def gen_equalities(factories,materials,shipping):
    return {**onhand_equalities(factories,materials),
    **total_shipped_equalities(shipping)}





# manufacturing coefficients/recipes
def manufacturing_recipes(factories,resources,respirators,ppe):
    days = get_n_days()
    resp_made = {("x_{}_{}_{}".format(equip,factory,day),"manufacturing_{}_{}_{}".format(material,factory,day)): respirators[equip][material] if material in respirators[equip].keys() else 0 for material in resources for factory,things in factories.items() if factory != "DUMMY_RESERVE" for equip in things if equip in respirators.keys() for day in range(1,days)}
    ppe_made = {("y_{}_{}_{}".format(equip,factory,day),"manufacturing_{}_{}_{}".format(material,factory,day)): ppe[equip][material] if material in ppe[equip].keys() else 0 for material in resources for factory,things in factories.items() if factory != "DUMMY_RESERVE" for equip in things if equip in ppe.keys() for day in range(1,days)}
    mat_onhand = {("M_{}_{}_{}".format(material,factory,day),"manufacturing_{}_{}_{}".format(material,factory,day)): -1 for material in resources for factory in factories.keys() if factory != "DUMMY_RESERVE" for day in range(1,days)}
    return {**resp_made,**ppe_made,**mat_onhand}

# onhand materials coefficients/recipes
def onhand_recipes(factories,resources,shipping,respirators,ppe):
    places = get_all_places()
    days = get_n_days()
    materials = get_all_materials(resources)
    equipment = get_list_equipment()

    # factories only - subtract used for equipment
    resp_made_yest = {("x_{}_{}_{}".format(equip,factory,day-1),"onhand_{}_{}_{}".format(material,factory,day)): respirators[equip][material] if material in respirators[equip].keys() else 0 for material in resources for factory,things in factories.items() for equip in things if equip in respirators.keys() for day in range(2,days)}
    ppe_made_yest = {("y_{}_{}_{}".format(equip,factory,day-1),"onhand_{}_{}_{}".format(material,factory,day)): ppe[equip][material] if material in ppe[equip].keys() else 0 for material in resources for factory,things in factories.items() for equip in things if equip in ppe.keys() for day in range(2,days)}
    
    # factories only - add resp and ppe made
    resp_supply_add = {("x_{}_{}_{}".format(equip,factory,day),"onhand_{}_{}_{}".format(equip,factory,day)): -1 for equip in respirators.keys() for factory in factories.keys() for day in range(1,days)}
    ppe_supply_add = {("y_{}_{}_{}".format(equip,factory,day),"onhand_{}_{}_{}".format(equip,factory,day)): -1 for equip in ppe.keys() for factory in factories.keys() for day in range(1,days)}
        
    # all places; resources and equipment
    mat_onhand_yest = {("M_{}_{}_{}".format(material,place,day-1),"onhand_{}_{}_{}".format(material,place,day)): 0 if place == "DUMMY_RESERVE" else -1 for material in materials for place in places for day in range(2,days)}
    shipped_out_yest = {("z_{}_{}->{}_{}".format(material,start,end,day-1),"onhand_{}_{}_{}".format(material,place,day)): 0 if place == "DUMMY_RESERVE" else 1 for day in range(2,days) for start,end,cap,cost in shipping for material in materials for place in places if start == place}
    shipped_in_yest = {("z_{}_{}->{}_{}".format(material,start,end,day-1),"onhand_{}_{}_{}".format(material,place,day)): 0 if place == "DUMMY_RESERVE" else -1 for day in range(2,days) for start,end,cap,cost in shipping for material in materials for place in places if end == place}
    mat_onhand = {("M_{}_{}_{}".format(material,place,day),"onhand_{}_{}_{}".format(material,place,day)): 1 for material in materials for place in places for day in range(1,days)}
    dummy_day0 = {("z_{}_{}->{}_0".format(material,start,end),"demand_{}_{}_1".format("ppe" if material in ppe.keys() else "respirators",place)): -1 for start,end,cap,cost in shipping if start == "DUMMY_RESERVE" for material in equipment for place in places if place == end}
    return {**resp_made_yest,
            **ppe_made_yest,
            **resp_supply_add,
            **ppe_supply_add,
            **mat_onhand_yest,
            **shipped_out_yest,
            **shipped_in_yest,
            **mat_onhand,
            **dummy_day0}

# ppe and respirator demand coefficients/recipes
def demand_recipes(hospitals,ppe):
    days = get_n_days()
    equipment = get_list_equipment()
    hospital_names = [h[0] for h in hospitals]

    # hospital total in/outflow
    shipped_from_yest = {("z_{}_{}->{}_{}".format(material,start,end,day-1),"demand_{}_{}_{}".format("ppe" if material in ppe.keys() else "respirators",place,day)): 1 for day in range(2,days) for start,end,cap,cost in shipping for material in equipment for place in hospital_names if place == start}
    shipped_to_yest = {("z_{}_{}->{}_{}".format(material,start,end,day-1),"demand_{}_{}_{}".format("ppe" if material in ppe.keys() else "respirators",place,day)): -1 for day in range(2,days) for start,end,cap,cost in shipping for material in equipment for place in hospital_names if place == end}
    dummy_day0 = {("z_{}_{}->{}_0".format(material,start,end),"demand_{}_{}_1".format("ppe" if material in ppe.keys() else "respirators",place)): -1 for start,end,cap,cost in shipping if start == "DUMMY_RESERVE" for material in equipment for place in hospital_names if place == end}

    # from yesterday
    onhand_yest = {("M_{}_{}_{}".format(material,place,day-1),"demand_{}_{}_{}".format("ppe" if material in ppe.keys() else "respirators",place,day)): -1 for material in equipment for place in hospital_names for day in range(2,days)}
    return {**shipped_from_yest,**shipped_to_yest,**onhand_yest,**dummy_day0}

# available to ship
def availability_recipes(shipping):
    places = get_all_places()
    days = get_n_days()
    materials = get_all_materials()

    # all in/outflow
    shipped_from = {("z_{}_{}->{}_{}".format(material,start,end,day),"availability_{}_{}_{}".format(material,place,day)): 1 for day in range(1,days) for start,end,cap,cost in shipping for material in materials for place in places if place == start}
    # shipped_to_yest = {("z_{}_{}->{}_{}".format(material,start,end,day-1),"availability_{}_{}_{}".format(material,place,day)): -1 for day in range(2,days) for start,end,cap,cost in shipping for material in materials for place in places if place == end}
    
    # available to ship
    onhand = {("M_{}_{}_{}".format(material,place,day),"availability_{}_{}_{}".format(material,place,day)): -1 for material in materials for place in places for day in range(1,days)}
    return {**shipped_from,**onhand}#**shipped_to_yest,**onhand}

# shipping over edge coefficients/recipes
def total_shipped_recipes(shipping):
    days = get_n_days()
    materials = get_all_materials()

    total_shipped = {("s_{}->{}_{}".format(start,end,day),"shipped_{}->{}_{}".format(start,end,day)): -1 for day in range(1,days) for start,end,cap,cost in shipping}
    shipped = {("z_{}_{}->{}_{}".format(material,start,end,day),"shipped_{}->{}_{}".format(start,end,day)): 1 for day in range(1,days) for start,end,cap,cost in shipping for material in materials}
    return {**shipped,**total_shipped}

# shipping capacity coefficients/recipes
def shipping_cap_recipes(shipping):
    days = get_n_days()
    return {("s_{}->{}_{}".format(start,end,day),"capacities_{}->{}_{}".format(start,end,day)): 1 for day in range(1,days) for start,end,cap,cost in shipping}

def gen_recipes(shipping,hospitals,resources,factories,respirators,ppe):
    return {**shipping_cap_recipes(shipping),
    **total_shipped_recipes(shipping),
    **demand_recipes(hospitals,ppe),
    **availability_recipes(shipping),
    **onhand_recipes(factories,resources,shipping,respirators,ppe),
    **manufacturing_recipes(factories,resources,respirators,ppe)}



materials = get_all_materials(resources)
decision_vars = gen_decision_variables(factories,materials,hospitals,shipping)
objective = gen_obj_fxn(decision_vars,shipping)

upper_bounds = gen_upper_bounds(factories,resources,hospitals,materials,shipping)
equalities = gen_equalities(factories,materials,shipping)
recipes = gen_recipes(shipping,hospitals,resources,factories,respirators,ppe)

import gurobipy as gp 
from gurobipy import GRB 
import run_model


m = run_model.solve(objective, decision_vars, recipes, upper_bounds, equalities)

# %%
