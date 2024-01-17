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

import pandas as pd
import matplotlib.pyplot as plt
import csv
import numpy as np

with open('preventivi_csv/prospetto'+'1'+'.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(['Nominativo', *roles])
    
    zeros = np.zeros(len(roles))    
    for member in members:
        writer.writerow([member, *zeros])