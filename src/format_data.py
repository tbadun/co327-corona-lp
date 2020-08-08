#%%
import read_data
import json
import csv

factories = read_data.read_cost_values("../data/factories.csv")
respirators = read_data.read_cost_values("../data/respirators.csv")
ppe = read_data.read_cost_values("../data/ppe.csv")
resources = read_data.read_list("../data/resources.csv")
hospitals = read_data.read_demand("../data/hospitals.csv")
shipping = read_data.read_shipping("../data/shipping.csv")

#%%
def add_dummy_shipping(shipping,factories,hospitals,large=1000000000):
    all_locations = [k for k in factories.keys()] + [h[0] for h in hospitals]
    dummy_shipping = [["DUMMY_RESERVE",location,large,large] for location in all_locations]
    return shipping + dummy_shipping

def add_dummy_factory(factories):
    return {**factories,**{"DUMMY_RESERVE":{}}}

factories = add_dummy_factory(factories)
shipping = add_dummy_shipping(shipping,factories,hospitals)

#%%
def get_list_equipment(ppe=ppe,respirators=respirators):
    return [k for k in ppe.keys()] + [k for k in respirators.keys()]

def get_all_materials(resources):
    return resources + get_list_equipment()

def get_n_days(hospitals=hospitals):
    return len(hospitals[0])

def get_all_places(factories=factories,hospitals=hospitals):
    return [k for k in factories.keys()] + [r[0] for r in hospitals]

# MIGHT NEED SOME FIXING
def gen_decision_variables(factories,materials,hospitals,shipping):
    days = get_n_days()
    places = get_all_places()

    resp_made = ["x_{}_{}_{}".format(r,f,day) for day in range(1,days) for f,mats in factories.items() for r in mats.keys() if "resp" in r]
    ppe_made = ["y_{}_{}_{}".format(r,f,day) for day in range(1,days) for f,mats in factories.items() for r in mats.keys() if "ppe" in r]
    mat_onhand = ["M_{}_{}_{}".format(mat,place,day) for mat in materials for place in places for day in range(1,days)]
    total_shipped = ["s_{}->{}_{}".format(start,end,day) for day in range(1,days) for start,end,cap,cost in shipping]
    shipped = ["z_{}_{}->{}_{}".format(m,start,end,day) for day in range(1,days) for start,end,cap,cost in shipping for m in materials]

    return resp_made + ppe_made + shipped + total_shipped + mat_onhand

#%%
def gen_obj_fxn(decision_vars,shipping):
    total_shipped = [i for i in decision_vars if i[0] == 's']
    shipping_costs = {"s_{}->{}".format(start,end):cost for start,end,cap,cost in shipping}
    return {dv:shipping_costs[dv[:dv.rfind("_")]] for dv in total_shipped}

materials = get_all_materials(resources)
decision_vars = gen_decision_variables(factories,materials,hospitals,shipping)
objective = gen_obj_fxn(decision_vars,shipping)

#%%

def manufacturing_upper_bounds(factories,resources):
    days = get_n_days()
    return {"manu_{}_{}_{}".format(material,factory,day):0 for material in resources for factory in factories.keys() for day in range(1,days)}

def shipping_availability_upper_bounds(hospitals,materials):
    places = get_all_places()
    days = get_n_days()
    demand = {h[0]:h for h in hospitals}
    return {"demand_{}_{}_{}".format(material,place,day): demand[place][day] if place in demand.keys() else 0 for place in places for day in range(1,days)}

def shipping_cap_upper_bounds(shipping):
    days = get_n_days()
    capacities = {"{}->{}".format(start,end):cap for start,end,cap,cost in shipping}
    return {"capacities_{}_{}".format(k,day) for k,v in capacities.items() for day in range(1,days)}

def onhand_equalities(factories,materials):
    places = get_all_places()
    days = get_n_days()
    return {"onhand_{}_{}_{}".format(material,place,day):0 for material in materials for place in places for day in range(1,days)}

def total_shipped_equalities(shipping):
    days = get_n_days()
    return {"shipped_{}->{}_{}".format(start,end,day) for day in range(1,days) for start,end,cap,cost in shipping}

def gen_upper_bounds(factories,resources,hospitals,materials,shipping):
    return {**manufacturing_upper_bounds(factories,resources),
    **shipping_availability_upper_bounds(hospitals,materials),
    **shipping_cap_upper_bounds(shipping)}

def gen_equalities(factories,materials,shipping):
    return {**onhand_equalities(factories,materials),
    **total_shipped_equalities(shipping)}


# %%
import gurobipy as gp 
from gurobipy import GRB 

# returns 'recipes' or coefficients for each variable in 
# each constraint
def gen_recipes(people:list,decision_vars:list):
    accept_rec = {(d,p+"_accept"): 1 if p in d else 0 for d in decision_vars for p in people}
    # include decision var in their own stability equation
    stable_rec = {(d1,d2.split("_")[1]+"_stable"): 1 if d1 == d2 else 0 for d1 in decision_vars for d2 in decision_vars}

    for d in decision_vars:
        # include preferred women
        for m,women in men_pref.items():
            if m in d:
                for w in women:
                    if w in d:
                        break
                    else:
                        stable_rec[('x_{}{}'.format(m,w),d.split("_")[1]+"_stable")] = 1
        # include preferred men
        for w,men in women_pref.items():
            if w in d:
                for m in men:
                    if m in d:
                        break
                    else:
                        stable_rec[('x_{}{}'.format(m,w),d.split("_")[1]+"_stable")] = 1
    return {**accept_rec,**stable_rec}

men_pref = {
    'Bob': ['Alice','Claire','Eve'],
    'Daniel': ['Claire','Alice','Eve'],
    'Finn': ['Alice','Eve','Claire']
}
women_pref = {
    'Alice': ['Daniel','Finn','Bob'],
    'Claire': ['Finn','Daniel','Bob'],
    'Eve': ['Daniel','Bob'],
}

people = list(men_pref.keys()) + list(women_pref.keys())

decision_vars = gen_decision_variables(men_pref,women_pref)
labels = [d.split("_")[1] for d in decision_vars]
objective = gen_obj_fxn(decision_vars)
upper_bounds = gen_upper_bounds(people)
lower_bounds = gen_lower_bounds(decision_vars)
recipes = gen_recipes(people,decision_vars)

model = a5q2b_model.solve(objective, decision_vars, labels, recipes, upper_bounds, lower_bounds)

