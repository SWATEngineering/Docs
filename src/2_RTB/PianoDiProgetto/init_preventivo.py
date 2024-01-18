# Script da eseguire prima di creare i preventivi
# Dopo averlo eseguito, si inseriscono i dati nei rispettivi csv

RESPONSABILE = "Re"
AMMINISTRATORE = "Am"
ANALISTA = "An"
PROGETTISTA = "Pt"
PROGRAMMATORE = "Pr"
VERIFICATORE = "Ve"

roles = [RESPONSABILE, AMMINISTRATORE, ANALISTA, PROGETTISTA, PROGRAMMATORE, VERIFICATORE]

SIMONE = {'extended':"Simone Caregnato", 'shortened':"Simone C."}
RICCARDOC = {'extended':"Riccardo Alberto Costantin", 'shortened':"Riccardo A.C."}
GIACOMO = {'extended':"Giacomo D'Ovidio", 'shortened':"Giacomo D."}
NANCY = {'extended':"Nancy Kalaj", 'shortened':"Nancy K."}
MATTEO = {'extended':"Matteo Rango", 'shortened':"Matteo R."}
RICCARDOT = {'extended':"Riccardo Toniolo", 'shortened':"Riccardo T."}

members = [SIMONE, RICCARDOC, GIACOMO, NANCY, MATTEO, RICCARDOT]

short_members = [member['shortened'] for member in members]

SPRINT_AHEAD = 2

import csv
import numpy as np

actualNum = 0 #TODO: find automatically this number

# alternativa: invece di fare così, li ricrea tutti

#create csv for future sprints (SPRINT_AHEAD)
for _ in range(1,SPRINT_AHEAD+1):
    with open('preventivi/preventivi_csv/prospetto' + str(actualNum+_) + '.csv', 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['Nominativo', *roles])
        
        zeros = np.zeros(len(roles))    
        for member in short_members:
            writer.writerow([member, *zeros])