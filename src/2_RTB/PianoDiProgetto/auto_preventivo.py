RESPONSABILE = "Re"
AMMINISTRATORE = "Am"
ANALISTA = "An"
PROGETTISTA = "Pt"
PROGRAMMATORE = "Pr"
VERIFICATORE = "Ve"

roles = [RESPONSABILE, AMMINISTRATORE, ANALISTA, PROGETTISTA, PROGRAMMATORE, VERIFICATORE]

SIMONE = "Simone Caregnato"
RICCARDOC = "Riccardo Alberto Costantin"
GIACOMO = "Giacomo D'Ovidio"
NANCY = "Nancy Kalaj"
MATTEO = "Matteo Rango"
RICCARDOT = "Riccardo Toniolo"

members = [SIMONE, RICCARDOC, GIACOMO, NANCY, MATTEO, RICCARDOT]

COST_AMMINISTRATORE = 20
COST_ANALISTA = 25
COST_PROGETTISTA = 25
COST_PROGRAMMATORE = 15
COST_RESPONSABILE = 30
COST_VERIFICATORE = 15

BUDGET_CASH = 11070
BUDGET_TIME = 570

import csv
import matplotlib.pyplot as plt

table_hours = []
hours_per_member = []

# read data from csv
with open('preventivi/preventivi_csv/prospetto'+'1'+'.csv', newline='') as csvfile:
    reader = csv.reader(csvfile, delimiter=',')
    table_hours = [next(reader)] # skip header and save first row
    for row in reader:
        hours_per_member.append([float(value) for value in row[1:]])
        table_hours.append(row) #we will use this later

# calculate total hours per member
total_per_member = [sum(hours) for hours in hours_per_member]

# calculate total hours per role
total_per_role = [sum([hours[i] for hours in hours_per_member]) for i in range(len(roles))]

# column of total hours per member
table_total_per_member = ["Totale per persona"] + total_per_member

# row of total hours per role
table_total_per_role = ["Totale per ruolo"] + total_per_role

# add to table
# last column
for index, row in enumerate(table_hours):
    row.append(table_total_per_member[index])
# last row
table_hours.append(table_total_per_role)

# write table to csv
with open('preventivi/assets/tables/tableProspettoOrario'+'1'+'.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerows(table_hours)

role_colors = ["#FF6961", "#5DADE2", "#E74C3C", "#F39C12", "#9B59B6", "#58D68D"]

# Filtering each vector to correspond only to positive time values
filtered_values = [
    (t, r, c) for t, r, c in zip(total_per_role, roles, role_colors) if t > 0
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
plt.savefig("preventivi/assets/rulesPie/anagramma"+'1'+".png")
plt.clf()