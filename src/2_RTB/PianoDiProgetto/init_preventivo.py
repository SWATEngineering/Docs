# Script da eseguire prima di creare i preventivi
# Dopo averlo eseguito, si inseriscono i dati nei rispettivi csv

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

SPRINT_AHEAD = 2

import csv
import numpy as np

actualNum = 0 #TODO: find automatically this number

# alternativa: invece di fare così, li ricrea tutti

#create csv for future sprints (SPRINT_AHEAD)
for _ in range(1,SPRINT_AHEAD+1):
    with open('preventivi_csv/prospetto' + str(actualNum+_) + '.csv', 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['Nominativo', *roles])
        
        zeros = np.zeros(len(roles))    
        for member in members:
            writer.writerow([member, *zeros])