# co327-corona-lp


## Introduction
This project will involve optimizing the Canadian government's Covid-19 response strategy. During our current outbreak, its essential to find the optimal way to produce medical equipments as Respirators and Personal Protective Equipment (PPE). This model will account numerious factors including, raw materials, shipping process, hospital/factory/shipping demand, material supply and many more across the country. Using this model, government officials can have a decent understanding on meeting essential demands of this whole process, in order to support theri decision making during this pandemic.

## Data 
`\co327-corona-lp\data\`
### Resources -- "resouces.csv"
Types of resources that goes into manufacture of respirators and PPE

### Respirators and PPE -- "respirators.csv"
Types of medical equipments produced 

### Hospital Demands -- "hospitals.csv"
Anticipated demand for ICU beds in each hospital on each day as the pandemic goes

### Factories -- "factories.csv"
Factories to produce medical equipment

### Shipping -- "shipping.csv"
Shipping capacity and cost between factories and hospitals

### Assumptions
  * All hospital/factory names are unique and consistently spelled across inputs
  * No location named "DUMMYRESERVE"
  * Everything noted in piazza/assignment outline is true, e.g. data formatting standards
  * Shipping time is same for all routes (overnight)
  * The cheaper arc is chosen
    
### Run
`\co327-corona-lp\src\format_data.py\`

### Formatted Results
`\co327-corona-lp\out\`

