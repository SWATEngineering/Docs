# to install:
# 1. Collocatevi nella cartella di questo script python con il terminale
# 2. Comando: python3 -m venv ./venv
# 3. Comando: pip install -r requirements.txt
#
# to use:
# 1. Assicurarsi di avere una cartella "Credentials" nella stessa directory dove è posizionato lo script python
# 2. Assicurarsi che in tale cartella sia presente un file chiamato "swatsheetscraper-c073830f31bf.json" con
#    all'interno, il contenuto messo nel canale testuale "accounts" sul server discord di SWAT Engineering
# 3. python3 timeresource_sheets_downloader.py

AMMINISTRATORE = "Amministratore"
ANALISTA = "Analista"
PROGETTISTA = "Progettista"
PROGRAMMATORE = "Programmatore"
RESPONSABILE = "Responsabile"
VERIFICATORE = "Verificatore"


import json
import pandas as pd
import matplotlib.pyplot as plt
from google.oauth2 import service_account
import gspread
import os

f = open("Credentials/swatsheetscraper-c073830f31bf.json")
service_account_info = json.load(f)
f.close()

credentials = service_account.Credentials.from_service_account_info(
    service_account_info
)
scope = [
    "https://spreadsheets.google.com/feeds",
    "https://www.googleapis.com/auth/drive",
]
creds_with_scope = credentials.with_scopes(scope)
client = gspread.authorize(creds_with_scope)
spreadsheet = client.open_by_url(
    "https://docs.google.com/spreadsheets/d/1i8MALUojfiQies5L4YpEIXBAUTfF-uAxcFPf5KePXJE/edit#gid=0"
)
worksheet = spreadsheet.get_worksheet(0)
records_data = worksheet.get_all_records()
records_df = pd.DataFrame.from_dict(records_data)
records_df["Ruolo"] = records_df["Ruolo"].replace(
    "Revisore", "Verificatore"
)  # Changing with proper role
records_df["OreProduttive"] = records_df["OreProduttive"].replace(
    "", "0"
)  # Setting empty hours to 0
records_df["OreProduttive"] = records_df["OreProduttive"].astype(
    int
)  # Converting the column to number
records_df["OreProduttive"] = (
    records_df["OreProduttive"] / 100
)  # Fixing the format of recorded hours
non_empty_records = records_df[
    records_df["Costo"] != 0
]  # Selecting only records with a cost different from 0

# sprint dictionary
sprints = {}

# dati primo sprint da due settimane
sprints["Sprint#01"] = non_empty_records[
    (45 <= non_empty_records["Week"]) & (non_empty_records["Week"] <= 47)
]

# dati secondo sprint da due settimane
sprints["Sprint#02"] = non_empty_records[
    (48 <= non_empty_records["Week"]) & (non_empty_records["Week"] <= 49)
]

# dati sprint successivi da una settimana
max_week = non_empty_records["Week"].max()

for week in range(50, max_week + 1):
    sprint_counter = week - 47
    sprints[
        "Sprint#"
        + (
            ("0" + str(sprint_counter))
            if (sprint_counter) < 10
            else str(sprint_counter)
        )
    ] = non_empty_records[week == non_empty_records["Week"]]

os.makedirs("sprintData", exist_ok=True)
for sprint_key in sprints:
    # Creating folders for each sprint recorded
    os.makedirs(os.path.join("sprintData", sprint_key), exist_ok=True)

    sprint = sprints[sprint_key]
    # Inserting in corresponding folders, raw sprint data
    sprint.to_csv(
        os.path.join("sprintData", sprint_key, (sprint_key + ".csv")),
        index=False,
        header=False,
    )

    # Analyzing data to extrapolate hours per member (doing a specific role)
    rendicontazione_ore = (
        sprint.groupby(["Nominativo", "Ruolo"])["OreProduttive"]
        .sum()
        .unstack(fill_value=0)
        .reset_index()
    )

    # Adding non existing columns
    if AMMINISTRATORE not in rendicontazione_ore.columns:
        rendicontazione_ore[AMMINISTRATORE] = 0
    if ANALISTA not in rendicontazione_ore.columns:
        rendicontazione_ore[ANALISTA] = 0
    if PROGETTISTA not in rendicontazione_ore.columns:
        rendicontazione_ore[PROGETTISTA] = 0
    if PROGRAMMATORE not in rendicontazione_ore.columns:
        rendicontazione_ore[PROGRAMMATORE] = 0
    if RESPONSABILE not in rendicontazione_ore.columns:
        rendicontazione_ore[RESPONSABILE] = 0
    if VERIFICATORE not in rendicontazione_ore.columns:
        rendicontazione_ore[VERIFICATORE] = 0

    # Creating column to reduce hours per person
    rendicontazione_ore["Totale per persona"] = (
        rendicontazione_ore.groupby("Nominativo").transform("sum").sum(axis=1)
    )

    # Creating row to reduce hours per role
    tot_ore_amministratore = rendicontazione_ore[AMMINISTRATORE].sum()
    tot_ore_analista = rendicontazione_ore[ANALISTA].sum()
    tot_ore_progettista = rendicontazione_ore[PROGETTISTA].sum()
    tot_ore_programmatore = rendicontazione_ore[PROGRAMMATORE].sum()
    tot_ore_responsabile = rendicontazione_ore[RESPONSABILE].sum()
    tot_ore_verificatore = rendicontazione_ore[VERIFICATORE].sum()
    tot_ore = (
        tot_ore_progettista
        + tot_ore_analista
        + tot_ore_programmatore
        + tot_ore_amministratore
        + tot_ore_verificatore
        + tot_ore_responsabile
    )
    rendicontazione_ore = pd.concat(
        [
            rendicontazione_ore,
            pd.DataFrame(
                {
                    "Nominativo": ["Totale per ruolo"],
                    AMMINISTRATORE: [tot_ore_amministratore],
                    ANALISTA: [tot_ore_analista],
                    PROGETTISTA: [tot_ore_progettista],
                    PROGRAMMATORE: [tot_ore_programmatore],
                    RESPONSABILE: [tot_ore_responsabile],
                    VERIFICATORE: [tot_ore_verificatore],
                    "Totale per persona": [tot_ore],
                }
            ),
        ],
        ignore_index=True,
    )

    # Saving sprint related analyzed data to csv
    rendicontazione_ore.to_csv(
        os.path.join(
            "sprintData", sprint_key, ("RendicontazioneOre" + sprint_key + ".csv")
        ),
        index=False,
    )

    # Setting time-per-role, role-string, role-colors
    time_values = [
        tot_ore_amministratore,
        tot_ore_analista,
        tot_ore_progettista,
        tot_ore_programmatore,
        tot_ore_responsabile,
        tot_ore_verificatore,
    ]
    role_values = [
        AMMINISTRATORE,
        ANALISTA,
        PROGETTISTA,
        PROGRAMMATORE,
        RESPONSABILE,
        VERIFICATORE,
    ]
    role_colors = ["#FF6961", "#5DADE2", "#E74C3C", "#F39C12", "#9B59B6", "#58D68D"]

    # Filtering each vector to correspond only to positive time values
    filtered_values = [
        (t, r, c) for t, r, c in zip(time_values, role_values, role_colors) if t > 0
    ]
    time_values, role_values, role_colors = zip(*filtered_values)

    # Creating the time pie chart
    plt.pie(
        time_values,
        labels=role_values,
        autopct="%1.1f%%",
        startangle=90,
        colors=role_colors,
    )
    plt.tight_layout()
    plt.savefig(os.path.join("sprintData", sprint_key, "RendicontazioneRuoliTorta.png"))
    plt.clf()

    # Creating bar chart
    rendicontazione_ore_wo_totale_persona = rendicontazione_ore.drop(
        "Totale per persona", axis=1, errors="ignore"
    )
    rendicontazione_ore_wo_totale_persona = rendicontazione_ore_wo_totale_persona[
        rendicontazione_ore_wo_totale_persona["Nominativo"] != "Totale per ruolo"
    ]

    # Plot a bar chart with stacked bars for each Nominativo
    ax = rendicontazione_ore_wo_totale_persona.set_index("Nominativo").plot(
        kind="bar", stacked=True, color=role_colors, figsize=(10, 6)
    )
    ax.set_xticklabels(ax.get_xticklabels(), rotation=0, ha="center")

    # Aggiungere etichette e titolo
    plt.xlabel("Nominativo")
    plt.ylabel("Ore per Ruolo")
    plt.title("Distribuzione Ore per Ruolo per Nominativo")

    # Aggiungere una legenda
    ax.legend(title="Ruolo", bbox_to_anchor=(1.05, 1), loc="upper left")
    plt.tight_layout()
    plt.savefig(
        os.path.join("sprintData", sprint_key, "RendicontazioneRuoliIstogramma.png")
    )
    plt.clf()
