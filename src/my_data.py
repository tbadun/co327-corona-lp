#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
@author: stevencao
"""

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

import read_data 
import prototype_model
import gurobipy as gp 
from gurobipy import GRB 


factories = read_data.read_cost_values("../data/factories.csv")
respirators = read_data.read_cost_values("../data/respirators.csv")
ppe = read_data.read_cost_values("../data/ppe.csv")

medical_supplies, objective = gp.multidict({
    'respirator1' : 1, 
    'respirator2' : 1,
    'ppe1' : 1,
    'ppe2' : 1,
    'ppe3' : 1
})

p1 = 0
p2 = 0
p3 = 0
m1 = 0
m2 = 0

def factory_material_update():
    global p1, p2, p3, m1, m2
    for factory in factories:
        for material in factories[factory]:
            if material == 'metal1':
                m1 += int(factories[factory][material])
            elif material == 'metal2':
                m2 += int(factories[factory][material])
            elif material == 'plastic1':
                p1 += int(factories[factory][material])
            elif material == 'plastic2':
                p2 += int(factories[factory][material])
            elif material == 'plastic3':
                p3 += int(factories[factory][material])
             
factory_material_update()



materials, supply = gp.multidict({
    'metal1' : m1,
    'metal2' : m2,
    'plastic1' : p1,
    'plastic2' : p2, 
    'plastic3' : p3
})

recipes = {
    ('respirator1', 'metal1') : 3,
    ('respirator1', 'metal2') : 0,
    ('respirator1', 'plastic1') : 2,
    ('respirator1', 'plastic2') : 0,
    ('respirator1', 'plastic3') : 4,

    ('respirator2', 'metal1') : 0,    
    ('respirator2', 'metal2') : 3,
    ('respirator2', 'plastic1') : 0,
    ('respirator2', 'plastic2') : 7,
    ('respirator2', 'plastic3') : 0,

    ('ppe1', 'metal1') : 0,    
    ('ppe1', 'metal2') : 8,
    ('ppe1', 'plastic1') : 6,
    ('ppe1', 'plastic2') : 5,
    ('ppe1', 'plastic3') : 0,
    
    ('ppe2', 'metal1') : 1,
    ('ppe2', 'metal2') : 0,
    ('ppe2', 'plastic1') : 0,
    ('ppe2', 'plastic2') : 2,
    ('ppe2', 'plastic3') : 9,
    
    ('ppe3', 'metal1') : 2,
    ('ppe3', 'metal2') : 1,
    ('ppe3', 'plastic1') : 8,
    ('ppe3', 'plastic2') : 2,
    ('ppe3', 'plastic3') : 9,
    
}
print(supply)

prototype_model.solve(medical_supplies, objective, materials, supply, recipes)