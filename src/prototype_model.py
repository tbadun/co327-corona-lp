"""
Defines a function solve which solves a medical supplies production problem

medical_supplies: a list of medical supply names
objective: a dictionary with where keys are medical_supplies names, and values are unit of production of each medical supply
materials: a list of material names
supply: a dictionary where keys are material names, and values are amount of each materials in all factories
recipes: a dictionary where keys are (medical supply, material) pairs, and values are amount of certain material needed to produce the medical supply
"""


import gurobipy as gp
from gurobipy import GRB


def solve(medical_supplies, objective, materials, supply, recipes):
   
    m = gp.Model("gtc")

    product = m.addVars(medical_supplies, name="product")
    m.setObjective(product.prod(objective), GRB.MAXIMIZE)

    m.addConstrs((gp.quicksum(recipes[medical_supply,resource]*product[medical_supply] for medical_supply in medical_supplies) <= supply[resource] for  resource in materials), "test")

    # solve model
    m.optimize()

    # print solution
    print("Optimal Solution")
    for v in m.getVars():
        # print variable name and variable value
        print(v.varName, '=', v.x)
    
    # Print Objective Value
    print("Optimal Value = ", m.objVal)
