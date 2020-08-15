#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
CO 327 Final Project

This is our Final model using Python + Gurobi to model and solve the medical supply optimization problem
"""
#%%
import gurobipy as gp 
from gurobipy import GRB

def print_solution(model):
    print()
    print('###### Results ######')
    
    model.write('../out/linear_program.lp')
    try:
        with open("../out/results.txt","w+") as f:
            for v in model.getVars():
                f.write('{}: {:,.0f}\n'.format(v.varName, v.x))
            print('Obj: {:,.0f}'.format(model.objVal))
            f.write('Obj: {:,.0f}\n'.format(model.objVal))
    except:
        print("No Solution Found")

# defines a function solve which solves a binary marketing problem
# objective: a dictionary with where keys are decision variables
#           and values are the method's reach
# decision_vars: list of decision variables (marketing methods)
# recipes: a dictionary where keys are (decision variable,constraint name) 
#           pairs, and values are coefficients
# upper_bounds: values which each contraint is less than or equal to 
# lower_bounds: values which each contraint is greater than or equal to 
def solve(objective, decision_vars, recipes, upper_bounds, equalities):
    m = gp.Model("corona-opt")

    # create decision variables for marketing methods
    allvars = m.addVars(decision_vars,name=decision_vars,vtype=GRB.INTEGER)
    outcome = gp.tupledict({i:allvars[i] for i in objective.keys()})

    # set objective to maximize reach
    m.setObjective(outcome.prod(objective), GRB.MINIMIZE)

    # upper bounds
    m.addConstrs((gp.quicksum(recipes[(i,k)]*allvars[i] for i in decision_vars if (i,k) in recipes.keys()) <= upper_bounds[k] for  k in upper_bounds.keys()), "upper")

    # lower bounds
    m.addConstrs((gp.quicksum(recipes[(i,k)]*allvars[i] for i in decision_vars if (i,k) in recipes.keys()) == equalities[k] for  k in equalities.keys()), "eq")

    # solve model
    m.optimize()

    # print solution
    print_solution(m)

    return m
