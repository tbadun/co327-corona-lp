#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
CO 327 Final Project
Tech Demo 1
""" 

"""
This is our first tech demo draft using Python + Gurobi to model and solve a
small chunk of the optimization problem. 

Note: 
    Some data input are hard coded into the model as of the first draft, the
    rest calls read_data.py to process the csv files into usable data types.


Assumptions:
    All factories are able to move supply to factory instantaneously
    All factories share the amount of all materials with each other
    All factories can create each type of respirator and PPE

Variables:
    x1 - number of units of respirator 1
    x2 - number of units of respirator 2
    y1 - number of units of PPE 1
    y2 - number of units of PPE 2
    y3 - number of units of PPE 3
    p1 - number of total pastic 1
    p2 - number of total pastic 2
    p3 - number of total pastic 3
    m1 - number of total metal 1
    m2 - number of total metal 2
    
Objective:
    Maximize the production of PPE and Respirators based on each type of
    materials that 4 factories have.
    
Constraints:
    Total of 480 p1 available across all factories 
    Total of 640 p2 available across all factories 
    Total of 820 p3 available  across all factories
    Total of 520 m1 available across all factories
    Total of 850 m2 available across all factories

Linear program:

max  x1 + x2 + y1 + y2 + y3

s.t. 2 x_1 +         6 y_1  +         8 y_3 <= p1
             7 x_2 + 5 y_1  + 2 y_2 + 2 y_3 <= p2
     4 x_1 +                  9 y_2 + 9 y_3 <= p3
     3 x_1 +                    y_2 + 2 y_3 <= m1
             3 x_2 + 8 y_1 +            y_3 <= m2
             
     x_1, x_2, y_1, y_2, y_3 >= 0

"""
#%%
import gurobipy as gp 
from gurobipy import GRB 

def print_solution(model):
    print()
    print('###### Results ######')
    
    model.write('test.lp')
    try:
        with open("results.txt","w+") as f:
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
