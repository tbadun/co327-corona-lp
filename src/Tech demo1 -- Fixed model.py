#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
CO 327 Final Project
Tech Demo 1
"""

"""
This is our first tech demo draft using Python+Gurobi to model and solve a
small chunk of the optimization problem. 

Note: 
    Inputs/model are hard coded into the model as of the first draft.


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

Objective:
    Maximize the production of PPE and Respirators based on each type of
    materials that 4 factories have.
    
Constraints:
    Total of 480 Plastic 1 available across all factories 
    Total of 640 Plastic 2 available across all factories 
    Total of 820 Plastic 3 available  across all factories
    Total of 520 Metal 1 available across all factories
    Total of 850 Metal 2 available across all factories

Linear program:

max  x1 + x2 + y1 + y2 + y3

s.t. 2 x_1 +         6 y_1  +         8 y_3 <= 480
             7 x_2 + 5 y_1  + 2 y_2 + 2 y_3 <= 640
     4 x_1 +                  9 y_2 + 9 y_3 <= 820
     3 x_1 +                    y_2 + 2 y_3 <= 520
             3 x_2 + 8 y_1 +            y_3 <= 850
             
     x_1, x_2, y_1, y_2, y_3 >= 0

"""


# Imports the gurobi package and gives it everything in it the prefix gp
import gurobipy as gp
# Imports the GRB family of constants for use in labelling variable types, objective function sense (Max/Min), etc
from gurobipy import GRB

# Surround everything with a try/catch so that we can understand what sort of errors occur if any

try:

    # Creates a new model and names it gtc
    # Stores the model in a variable called m
    m = gp.Model("Prototype model")
    
    # Creates a variable x_1 for number of respirator 1 to produce.
    # Lower Bound on value of x_1 is 0.
    # Upper Bound on value of x_1 is infinity.
    x_1 = m.addVar(vtype=GRB.CONTINUOUS, lb=0, ub=GRB.INFINITY, name="respirator 1")
    
    # Creates a variable x_2 for number of respirator 1 to produce. 
    # Lower Bound on value of x_2 is 0.
    # Upper Bound on value of x_2 is infinity.
    x_2 = m.addVar(vtype=GRB.CONTINUOUS, lb=0, ub=GRB.INFINITY, name="respirator 2")
    
    # Creates a variable y_1 for number of PPE 1 to produce. 
    # Lower Bound on value of y_1 is 0.
    # Upper Bound on value of y_1 is infinity.
    y_1 = m.addVar(vtype=GRB.CONTINUOUS, lb=0, ub=GRB.INFINITY, name="PPE 1")
   
    # Creates a variable y_2 for number of PPE 2 to produce. 
    # Lower Bound on value of y_2 is 0.
    # Upper Bound on value of y_2 is infinity.
    y_2 = m.addVar(vtype=GRB.CONTINUOUS, lb=0, ub=GRB.INFINITY, name="PPE 2")

    # Creates a variable y_3 for number of PPE 3 to produce. 
    # Lower Bound on value of y_3 is 0.
    # Upper Bound on value of y_3 is infinity.
    y_3 = m.addVar(vtype=GRB.CONTINUOUS, lb=0, ub=GRB.INFINITY, name="PPE 3")
     
    
    # Set Objective
    # Maximize the production of PPE and Respirators 
    # based on each type of materials that 4 factories have
    m.setObjective(x_1 + x_2 + y_1 + y_2 + y_3, GRB.MAXIMIZE)


    # Add Constraint to m all the materials listed:
    
    # Total of 480 Plastic 1 available across all factories 
    m.addConstr(2 * x_1 + 6 * y_1 + 8 * y_3 <= 480,  "Plastic 1")
    
    # Total of 640 Plastic 2 available across all factories 
    m.addConstr(7 * x_2 + 5 * y_1 + 2 * y_2 + 2 * y_3 <= 640,  "Plastic 2")
    
    # Total of 820 Plastic 3 available  across all factories
    m.addConstr(4 * x_1 + 9 * y_2 + 9 * y_3 <= 820,  "Plastic 3")
    
    # Total of 520 Metal 1 available across all factories
    m.addConstr(3 * x_1 + y_2 + 2 * y_3 <= 520,  "Metal 1")
    
    # Total of 850 Metal 2 available across all factories
    m.addConstr(3 * x_1 + 8 * y_1 + y_3 <= 850,  "Metal 2")


    # Optimize the model
    m.optimize()

    # Print values of variables
    
    # Iterate over all variables
    print("Optimal Solution")
    for v in m.getVars():
        # print variable name and variable value
        print(v.varName, '=', v.x)
    
    # Print Objective Value
    print("Optimal Value = ", m.objVal)

# Catch exceptions (errors during execution)
# Did Gurobi make a mistake?
except gp.GurobiError as e:
    # Print the erro
    print('Error code', e.errno, ':', e)

# Was there an Attribute error?
except AttributeError as e:
    print('Encountered an atttribute error', ":", e)