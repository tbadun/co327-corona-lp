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
    all_locations = [k for k in factories.keys()] + [h[0] for h in hospitals]
    dummy_shipping = [["DUMMY_RESERVE",location,large,large] for location in all_locations]
    return shipping + dummy_shipping

def add_dummy_factory(factories):
    return {**factories,**{"DUMMY_RESERVE":{}}}




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

    return resp_made + ppe_made + shipped + total_shipped + mat_onhand




# sets up obj function
def gen_obj_fxn(decision_vars,shipping):
    total_shipped = [i for i in decision_vars if i[0] == 's']
    shipping_costs = {"s_{}->{}".format(start,end):cost for start,end,cap,cost in shipping}
    return {dv:shipping_costs[dv[:dv.rfind("_")]] for dv in total_shipped}




# establish the upper bounds for manufacturing resources
def manufacturing_upper_bounds(factories,resources):
    days = get_n_days()
    return {"manufacturing_{}_{}_{}".format(material,factory,day):0 for material in resources for factory in factories.keys() for day in range(1,days)}

#########################################################################
# COMBINE DEMAND FOR PPE, RESPIRATORS FOR HOSPITALS #####################
#########################################################################
# establish upper bounds for demand
def demand_upper_bounds(hospitals,materials,resources):
    places = get_all_places()
    days = get_n_days()
    demand = {h[0]:h for h in hospitals}
    return {"demand_{}_{}_{}".format(material,place,day): demand[place][day] if place in demand.keys() and material not in resources else 0 for place in places for day in range(1,days) for material in materials}

# establish upper bounds for shipping capacity
def shipping_cap_upper_bounds(shipping):
    days = get_n_days()
    capacities = {"{}->{}".format(start,end):cap for start,end,cap,cost in shipping}
    return {"capacities_{}_{}".format(k,day):v for k,v in capacities.items() for day in range(1,days)}

# equalities for next day on-hand resources/materials
def onhand_equalities(factories,materials):
    places = get_all_places()
    days = get_n_days()
    return {"onhand_{}_{}_{}".format(material,place,day):0 for material in materials for place in places for day in range(1,days)}

# equalities for what was shipped over edge
def total_shipped_equalities(shipping):
    days = get_n_days()
    return {"shipped_{}->{}_{}".format(start,end,day):0 for day in range(1,days) for start,end,cap,cost in shipping}

# all upper bounds
def gen_upper_bounds(factories,resources,hospitals,materials,shipping):
    return {**manufacturing_upper_bounds(factories,resources),
    **demand_upper_bounds(hospitals,materials,resources),
    **shipping_cap_upper_bounds(shipping)}

# all equalities
def gen_equalities(factories,materials,shipping):
    return {**onhand_equalities(factories,materials),
    **total_shipped_equalities(shipping)}





# manufacturing coefficients/recipes
def manufacturing_recipes(factories,resources,respirators,ppe):
    days = get_n_days()
    resp_made = {("x_{}_{}_{}".format(equip,factory,day),"manufacturing_{}_{}_{}".format(material,factory,day)): respirators[equip][material] if material in respirators[equip].keys() else 0 for material in resources for factory,things in factories.items() for equip in things if equip in respirators.keys() for day in range(1,days)}
    ppe_made = {("y_{}_{}_{}".format(equip,factory,day),"manufacturing_{}_{}_{}".format(material,factory,day)): ppe[equip][material] if material in ppe[equip].keys() else 0 for material in resources for factory,things in factories.items() for equip in things if equip in ppe.keys() for day in range(1,days)}
    mat_onhand = {("M_{}_{}_{}".format(material,factory,day),"manufacturing_{}_{}_{}".format(material,factory,day)): -1 for material in resources for factory in factories.keys() for day in range(1,days)}
    return {**resp_made,**ppe_made,**mat_onhand}

# onhand materials coefficients/recipes
def onhand_recipes(factories,resources,shipping,respirators,ppe):
    places = get_all_places()
    days = get_n_days()
    materials = get_all_materials(resources)

    # factories only
    resp_made_yest = {("x_{}_{}_{}".format(equip,factory,day-1),"onhand_{}_{}_{}".format(material,factory,day)): respirators[equip][material] if material in respirators[equip].keys() else 0 for material in resources for factory,things in factories.items() for equip in things if equip in respirators.keys() for day in range(2,days)}
    ppe_made_yest = {("y_{}_{}_{}".format(equip,factory,day-1),"onhand_{}_{}_{}".format(material,factory,day)): ppe[equip][material] if material in ppe[equip].keys() else 0 for material in resources for factory,things in factories.items() for equip in things if equip in ppe.keys() for day in range(2,days)}
    
    # all places; resources and equipment
    mat_onhand_yest = {("M_{}_{}_{}".format(material,place,day-1),"onhand_{}_{}_{}".format(material,place,day)): -1 for material in materials for place in places for day in range(2,days)}
    shipped_out_yest = {("z_{}_{}->{}_{}".format(material,start,end,day-1),"onhand_{}_{}_{}".format(material,place,day)): 1 if start == place else 0 for day in range(2,days) for start,end,cap,cost in shipping for material in materials for place in places}
    shipped_in_yest = {("z_{}_{}->{}_{}".format(material,start,end,day-1),"onhand_{}_{}_{}".format(material,place,day)): -1 if end == place else 0 for day in range(2,days) for start,end,cap,cost in shipping for material in materials for place in places}
    mat_onhand = {("M_{}_{}_{}".format(material,place,day),"onhand_{}_{}_{}".format(material,place,day)): 1 for material in materials for place in places for day in range(1,days)}
    
    return {**resp_made_yest,**ppe_made_yest,**mat_onhand_yest,**shipped_out_yest,**shipped_in_yest,**mat_onhand}

# shipping demand coefficients/recipes
#########################################################################
# COMBINE DEMAND FOR PPE, RESPIRATORS FOR HOSPITALS #####################
#########################################################################
def demand_recipes(hospitals,resources,factories):
    places = get_all_places()

    days = get_n_days()
    hospital_names = [h[0] for h in hospitals]
    equipment = get_list_equipment()
    materials = get_all_materials()

    # all in/outflow
    shipped_from = {("z_{}_{}->{}_{}".format(material,start,end,day),"demand_{}_{}_{}".format(material,place,day)): 1 for day in range(1,days) for start,end,cap,cost in shipping for material in materials for place in places if place == start}
    shipped_to_yest = {("z_{}_{}->{}_{}".format(material,start,end,day-1),"demand_{}_{}_{}".format(material,place,day)): -1 for day in range(2,days) for start,end,cap,cost in shipping for material in materials for place in places if place == end}

    # all @ factories, 
    mat_onhand_factory = {("M_{}_{}_{}".format(material,factory,day),"demand_{}_{}_{}".format(material,factory,day)): -1 for material in materials for factory in factories.keys() for day in range(1,days)}

    # raw @ hospitals
    raw_onhand_hospital = {("M_{}_{}_{}".format(resource,hospital,day),"demand_{}_{}_{}".format(resource,hospital,day)): -1 for resource in resources for hospital in hospital_names for day in range(1,days)}

    # equipment @ hospitals
    equip_onhand_hospital_yest = {("M_{}_{}_{}".format(equip,hospital,day-1),"demand_{}_{}_{}".format(equip,hospital,day)): 1 for equip in equipment for hospital in hospital_names for day in range(2,days)}

    return {**shipped_from,**shipped_to_yest,**mat_onhand_factory,**raw_onhand_hospital,**equip_onhand_hospital_yest}

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

#%%
def gen_recipes(shipping,hospitals,resources,factories,respirators,ppe):
    return {**shipping_cap_recipes(shipping),
    **total_shipped_recipes(shipping),
    **demand_recipes(hospitals,resources,factories),
    **onhand_recipes(factories,resources,shipping,respirators,ppe),
    **manufacturing_recipes(factories,resources,respirators,ppe)}

factories = add_dummy_factory(factories)
shipping = add_dummy_shipping(shipping,factories,hospitals)
materials = get_all_materials(resources)
decision_vars = gen_decision_variables(factories,materials,hospitals,shipping)
objective = gen_obj_fxn(decision_vars,shipping)

upper_bounds = gen_upper_bounds(factories,resources,hospitals,materials,shipping)
lower_bounds = gen_equalities(factories,materials,shipping)
recipes = gen_recipes(shipping,hospitals,resources,factories,respirators,ppe)

# %%
import gurobipy as gp 
from gurobipy import GRB 
