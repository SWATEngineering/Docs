# Script da eseguire prima di creare i preventivi

# to install:
# 1. Collocatevi nella cartella di questo script python con il terminale
# 2. Comando: python3 -m venv ./venv
# 3. Comando: source ./venv/bin/activate
# 4. Comando: pip install -r requirements.txt

# Per eseguirlo bisogna passare come argomento il numero dello sprint attuale, creerà i csv per i 2 sprint successivi

# python3 init_preventivo.py *numero_sprint_attuale*

# Dopo averlo eseguito, si inseriscono i dati nei rispettivi csv in preventivi/preventivi_csv

RESPONSABILE = {'extended':"Responsabile", 'shortened':"Re"}
AMMINISTRATORE = {'extended':"Amministratore",'shortened':"Am"}
ANALISTA = {'extended':"Analista", 'shortened':"An"}
PROGETTISTA = {'extended':"Progettista", 'shortened':"Pt"}
PROGRAMMATORE = {'extended':"Programmatore", 'shortened':"Pr"}
VERIFICATORE = {'extended':"Verificatore", 'shortened':"Ve"}

roles = [RESPONSABILE, AMMINISTRATORE, ANALISTA, PROGETTISTA, PROGRAMMATORE, VERIFICATORE]
short_roles = [role['shortened'] for role in roles]

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
import os
import re
"""
if len(sys.argv) > 1:
    if sys.argv[1].isdigit():
        actualNum = int(sys.argv[1])
    else:
        print("Error: argument must be a number")
        sys.exit(1)
else:
    print("Error: missing argument")
    sys.exit(1)
"""
#get actualNum from most recent csv
files = os.listdir('preventivi/preventivi_csv')
pattern = re.compile(r'prospetto(\d+)\.csv')
max_n = 0

for file in files:
    match = pattern.match(file)
    if match:
        n = int(match.group(1))
        max_n = max(max_n, n)

actualNum = max_n

#create csv for future sprints (SPRINT_AHEAD)
for _ in range(1,SPRINT_AHEAD+1):
    with open('preventivi/preventivi_csv/prospetto' + str(actualNum+_) + '.csv', 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['Nominativo', *short_roles])
        
        zeros = np.zeros(len(short_roles))    
        for member in short_members:
            writer.writerow([member, *zeros])