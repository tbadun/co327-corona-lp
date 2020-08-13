# REQUIRED PACKAGES
# UNCOMMENT ON FIRST RUN OF FILE IF YOU DON'T HAVE THESE PACKAGES
# !pip install csv
# !pip install json
#%%
import csv
import json 

""" 
Functions to read in data from csvs 
Each function needs the relative path to the csv file as input
- read_cost_values: used for tables with string/integer pairs
                    outputs dictionary of values
                    e.g., factories -> {factory1: {plastic1: 100, metal2:57, ...}, ... }
- read_list: just used for resources, reads csv, outputs list
- read_demand: just used for hospitals, reads csv, outputs list of lists
                NOTE: output will be adjusted to whatever is easiest for Gurobi inputs
- read_shipping: just used for shipping paths, reads csv, outputs list of lists
                NOTE: output will be adjusted to whatever is easiest for Gurobi inputs
There are additional helper functions to read and clean data
"""

# strips and casts all eligible elements in an array (float and string)
def traverse_cast(list_of_lists: list):
    cleaned = []
    for row in list_of_lists:
        new_row = []
        for i in row:
            try:
                new_row.append(float(str(i).strip()))
            except:
                new_row.append(i.strip())
        cleaned.append(new_row)
    return cleaned

# reads in data from csv, strips strings, and casts all numbers to float
# empty rows are removed
def clean_read(fname:str):
    with open(fname,encoding="utf-8-sig") as csvfile:
        data = list(csv.reader(csvfile))
    return [i for i in traverse_cast(data) if i!=[]]

# reads csv and returns dictionary of contents
# use for: respirators, factories, ppe
def read_cost_values(csv_name: str):
    cleaned = clean_read(csv_name)
    return {row[0]: {row[i]:row[i+1] for i in range(1,len(row)-1,2)} for row in cleaned}

# reads csv and returns list of contents
# use for: resources
def read_list(csv_name: str):
    cleaned = clean_read(csv_name)
    combined = []
    for row in cleaned:
        combined = combined + row
    return sorted(combined)

# reads csv and returns pandas df (for now) 
# replace blanks with 0s
# use for: hospitals
def read_demand(csv_name: str):
    cleaned = clean_read(csv_name)
    n_days = max([len(i) for i in cleaned]) # -1
    for i in range(len(cleaned)):
        cleaned[i] = [j if j!='' else 0 for j in cleaned[i]]
        cleaned[i] = cleaned[i] + [0]*(n_days-len(cleaned[i]))
    # {row[0]: row[1:] + ([0] * (n_days-len(row)+1)) for row in cleaned}
    return cleaned


#%%
# reads csv and returns list of lists
# takes cheapest path, if same cost, takes largest capacity
# use for: shipping
def read_shipping(csv_name:str):
    data = clean_read(csv_name)
    dct = {}
    for r in data:
        newkey = r[0]+r[1]
        if newkey not in list(dct.keys()):
            dct[newkey] = r
        elif dct[newkey][3] > r[3]:
            dct[newkey] = r
        elif dct[newkey][3] == r[3] and dct[newkey][2] < r[2]:
            dct[newkey] = r
    return list(dct.values())

# # %%
# # EXAMPLES:
# factories = read_cost_values("../data/factories.csv")
# respirators = read_cost_values("../data/respirators.csv")
# ppe = read_cost_values("../data/ppe.csv")
# resources = read_list("../data/resources.csv")
# hospitals = read_demand("../data/hospitals.csv")
# shipping = read_shipping("../data/shipping.csv")



# %%
