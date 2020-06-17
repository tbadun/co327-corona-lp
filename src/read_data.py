#%%
import pandas as pd
import csv

""" 
Functions to read in data from csvs 
Each function needs the relative path to the csv file as input
- read_cost_values: used for tables with string/integer pairs
                    outputs dictionary of values
                    e.g., factories -> {factory1: {plastic1: 100, metal2:57, ...}, ... }
- read_list: just used for resources, reads csv, outputs list
- read_demand: just used for hospitals, reads csv, outputs pandas dataframe
                NOTE: output will be adjusted to whatever is easiest for Steven
- read_shipping: just used for shipping paths, reads csv, outputs pandas dataframe
                NOTE: output will be adjusted to whatever is easiest for Steven
"""

# reads csv and returns dictionary of contents
# use for: respirators, factories, ppe
def read_cost_values(csv_name: str):
    raw = pd.read_csv(csv_name,header=None).set_index(0)
    df_list = list()
    for i in range(1,len(raw.columns),2):
        subsection = raw[[i,i+1]]
        subsection.columns = ["a","b"]
        df_list.append(subsection)
    df = pd.concat(df_list).dropna()
    df.a = df.a.apply(lambda x: x.strip())
    df = df.reset_index().groupby([0,"a"]).max().unstack()
    df.columns = df.columns.droplevel()
    df.index.name = None
    # print(df)
    return {k1:{k2:v2 for k2,v2 in v1.items() if pd.notnull(v2)} for k1,v1 in df.to_dict(orient='index').items()}

# reads csv and returns list of contents
# use for: resources
def read_list(csv_name: str):
    with open(csv_name) as csvfile:
        read = csv.reader(csvfile, delimiter=',', quotechar='|')
        combined = []
        for row in read:
            combined = combined + row
    # print (combined)
    return combined

# reads csv and returns pandas df (for now) 
# use for: hospitals
def read_demand(csv_name: str):
    with open(csv_name, encoding="utf-8") as csvfile:
        read = csv.reader(csvfile, skipinitialspace=True, delimiter=',', quotechar='"')
        combined = []
        for row in read:
            combined.append(row)
    df = pd.DataFrame(combined).set_index(0).fillna(0).astype(int)
    df.columns = ["day_"+str(i) for i in df.columns]
    df.index.name=None
    return df

# reads csv and returns pandas df (for now)
# user for: shipping
def read_shipping(csv_name:str):
    raw = pd.read_csv(csv_name,header=None)
    raw.columns = ["from","to","capcity","cost_per_unit"]
    return raw

# EXAMPLES:

# factories = read_cost_values("../data/factories.csv")
# respirators = read_cost_values("../data/respirators.csv")
# ppe = read_cost_values("../data/ppe.csv")
# resources = read_list("../data/resources.csv")
# hospitals = read_demand("../data/hospitals.csv")
# shipping = read_shipping("../data/shipping.csv")