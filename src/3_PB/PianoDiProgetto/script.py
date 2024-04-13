import csv
import sys

def sposta_colonna(csv_file):
    # Leggi il file CSV
    with open(csv_file, 'r') as file:
        csv_reader = csv.reader(file)
        data = list(csv_reader)

    # Controllo che il file abbia almeno due colonne
    if len(data) > 0 and len(data[0]) > 1:
        # Sposta la seconda colonna come penultima colonna
        for row in data:
            second_col_value = row.pop(1)  # Rimuove il valore della seconda colonna
            row.insert(-1, second_col_value)  # Inserisce il valore nella posizione penultima

        # Scrivi il file CSV aggiornato
        with open(csv_file, 'w', newline='') as file:
            csv_writer = csv.writer(file)
            csv_writer.writerows(data)
        print("Colonna spostata correttamente.")
    else:
        print("Il file non ha abbastanza colonne.")

# Eseguire lo script se viene fornito il nome del file CSV come argomento da riga di comando
if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Utilizzo: python script.py nome_file.csv")
    else:
        nome_file_csv = sys.argv[1]
        sposta_colonna(nome_file_csv)
