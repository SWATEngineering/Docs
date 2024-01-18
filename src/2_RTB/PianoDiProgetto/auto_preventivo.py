RESPONSABILE = {'extended':"Responsabile", 'shortened':"Re"}
AMMINISTRATORE = {'extended':"Amministratore",'shortened':"Am"}
ANALISTA = {'extended':"Analista", 'shortened':"An"}
PROGETTISTA = {'extended':"Progettista", 'shortened':"Pt"}
PROGRAMMATORE = {'extended':"Programmatore", 'shortened':"Pr"}
VERIFICATORE = {'extended':"Verificatore", 'shortened':"Ve"}

roles = [RESPONSABILE, AMMINISTRATORE, ANALISTA, PROGETTISTA, PROGRAMMATORE, VERIFICATORE]
short_roles = [role['shortened'] for role in roles]
ext_roles = [role['extended'] for role in roles]

SIMONE = {'extended':"Simone Caregnato", 'shortened':"Simone C."}
RICCARDOC = {'extended':"Riccardo Alberto Costantin", 'shortened':"Riccardo A.C."}
GIACOMO = {'extended':"Giacomo D'Ovidio", 'shortened':"Giacomo D."}
NANCY = {'extended':"Nancy Kalaj", 'shortened':"Nancy K."}
MATTEO = {'extended':"Matteo Rango", 'shortened':"Matteo R."}
RICCARDOT = {'extended':"Riccardo Toniolo", 'shortened':"Riccardo T."}

members = [SIMONE, RICCARDOC, GIACOMO, NANCY, MATTEO, RICCARDOT]

ext_members = [member['extended'] for member in members]

COST_AMMINISTRATORE = 20
COST_ANALISTA = 25
COST_PROGETTISTA = 25
COST_PROGRAMMATORE = 15
COST_RESPONSABILE = 30
COST_VERIFICATORE = 15

costs = [COST_RESPONSABILE, COST_AMMINISTRATORE, COST_ANALISTA, COST_PROGETTISTA, COST_PROGRAMMATORE, COST_VERIFICATORE]

import csv
import matplotlib.pyplot as plt
import copy as cp
import pandas as pd

sprintNum = 1

# read budget from csv
with open('preventivi/budget.csv', newline='') as csvfile:
    reader = csv.reader(csvfile, delimiter=',')
    budget_csv = [next(reader)] # skip header
    rows = list(reader)
    budget_time = int(rows[sprintNum-1][1]) # we skip the first column
    budget_cash = int(rows[sprintNum-1][2])
    for row in rows:
        budget_csv.append(row)

prospetto = []
table_hours = []
hours_per_member = []

# read data from csv
with open('preventivi/preventivi_csv/prospetto'+str(sprintNum)+'.csv', newline='') as csvfile:
    reader = csv.reader(csvfile, delimiter=',')
    table_hours = [next(reader)] # skip header and save first row
    prospetto = cp.deepcopy(table_hours) #we will use this later
    for index, row in enumerate(reader):
        hours_per_member.append([float(value) for value in row[1:]])
        table_hours.append([ext_members[index]] + row[1:]) #we will use this later
        prospetto.append(row)

# calculate total hours per member
total_per_member = [sum(hours) for hours in hours_per_member]

# calculate total hours per role
total_per_role = [sum([hours[i] for hours in hours_per_member]) for i in range(len(short_roles))]

# column of total hours per member
table_total_per_member = ["Totale per persona"] + total_per_member

# row of total hours per role
table_total_per_role = ["Totale per ruolo"] + total_per_role + [sum(total_per_role)]

# add to table
# last column
for index, row in enumerate(table_hours):
    row.append(table_total_per_member[index])
# last row
table_hours.append(table_total_per_role)

# write 'prospetto orario' table to csv
with open('preventivi/assets/tables/tableProspettoOrario'+str(sprintNum)+'.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerows(table_hours)

# 'prospetto economico' table
# header
table_budget = [["Ruolo", "Ore", "Costo"]]
cost_per_role = []
for index in range (len(short_roles)):
    cost_per_role.append(total_per_role[index]*costs[index])  # calculate total cost per role 
    table_budget.append([ext_roles[index], total_per_role[index] , str(cost_per_role[index])+'€'])

table_budget.append(["Totale", sum(total_per_role), str(sum(cost_per_role))+'€'])
remaining_time = budget_time-sum(total_per_role)
remaining_cash = budget_cash-sum(cost_per_role)
table_budget.append(["Rimanente", remaining_time, str(remaining_cash)+'€'])

# write 'prospetto economico' table to csv
with open('preventivi/assets/tables/tableProspettoEconomico'+str(sprintNum)+'.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerows(table_budget)

role_colors = ["#FF6961", "#5DADE2", "#E74C3C", "#F39C12", "#9B59B6", "#58D68D"]

# Filtering each vector to correspond only to positive time values
filtered_values = [
    (t, r, c) for t, r, c in zip(total_per_role, short_roles, role_colors) if t > 0
]
time_values, role_values, role_colors = zip(*filtered_values)

# Creating the time pie chart
fig, ax = plt.subplots()
wedges, texts, autotexts = ax.pie(
    time_values,
    autopct="%1.1f%%",
    startangle=90,
    colors=role_colors,
)
ax.legend(wedges, role_values, loc="upper right", bbox_to_anchor=(0.7, 0.1, 0.5, 1))
plt.tight_layout()
plt.savefig("preventivi/assets/rolesPie/areogramma"+str(sprintNum)+".png")
plt.clf()

# Creating the bar chart
# prospetto doesn't have the header and the last row
# convert prospetto to DataFrame
columns = prospetto[0]
data = prospetto[1:]
df = pd.DataFrame(data, columns=columns)

df = df.set_index("Nominativo", drop=True)

# Convert columns to numeric
df = df.apply(pd.to_numeric, errors='coerce')

# Plotting
ax = df.plot(kind="bar", stacked=True, figsize=(10, 6))

ax.set_xticklabels(ax.get_xticklabels(), rotation=0, ha="center")

# Aggiungere etichette e titolo
plt.xlabel("Nominativo")
plt.ylabel("Ore per Ruolo")
plt.title("Distribuzione Ore per Ruolo per Nominativo")

# Aggiungere una legenda
ax.legend(title="Ruolo", bbox_to_anchor=(1.05, 1), loc="upper left")
plt.tight_layout()
plt.savefig("preventivi/assets/barChart/istogramma"+str(sprintNum)+".png")
plt.clf()

# Creating the cost cash pie chart
fig, ax = plt.subplots()
wedges, texts, autotexts = ax.pie(
    [budget_cash - remaining_cash, remaining_cash],
    labels=None,
    autopct=lambda p: "{:.1f}€ ({:.1f}%)".format(p * budget_cash / 100, p),
    startangle=90,
    colors=["#FFB6C1", "#ADD8E6"],
)
cash_labels = ["Budget speso", "Budget rimanente"]
ax.legend(wedges, cash_labels, loc="upper right", bbox_to_anchor=(0.7, 0, 0.5, 1))
plt.tight_layout()
plt.savefig("preventivi/assets/cashPie/areogramma"+str(sprintNum)+".png")
plt.clf()

# Creating the cost time pie chart
fig, ax = plt.subplots()
wedges, texts, autotexts = ax.pie(
    [budget_time - remaining_time, remaining_time],
    autopct=lambda p: "{:.1f} ({:.1f}%)".format(p * budget_time / 100, p),
    startangle=90,
    colors=["#FFB6C1", "#ADD8E6"],
)
time_labels = ["Tempo speso", "Tempo rimanente"]
ax.legend(wedges, time_labels, loc="upper right", bbox_to_anchor=(0.7, 0, 0.5, 1))
plt.tight_layout()
plt.savefig("preventivi/assets/timePie/areogramma"+str(sprintNum)+".png")
plt.clf()

# write new budget to csv
with open('preventivi/budget.csv', 'w', newline='') as csvfile:
    # update row of current sprint
    writer = csv.writer(csvfile)
    # if there is row  sprintNum, update it, otherwise create it
    for row in budget_csv:
        if row[0] == str(sprintNum):
            row[1] = remaining_time
            row[2] = remaining_cash
    else:
        budget_csv.append([sprintNum, remaining_time, remaining_cash])
    writer.writerows(budget_csv)