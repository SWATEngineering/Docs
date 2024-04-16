import os

def replace_text_in_files(folder_path):
    # Ottenere la lista dei file nella cartella
    files = os.listdir(folder_path)
    
    # Scorrere tutti i file nella cartella
    for file_name in files:
        if file_name.endswith('.typ'):
            file_path = os.path.join(folder_path, file_name)
            with open(file_path, 'r') as file:
                lines = file.readlines()
            
            # Cerca la prima occorrenza di "#glossary[sprint]" e sostituisci
            for i, line in enumerate(lines):
                if "==" in line:
                    lines[i] = line.replace("==","====")
                    break
            
            # Scrivi le modifiche nel file
            with open(file_path, 'w') as file:
                file.writelines(lines)

# Specifica il percorso della cartella contenente i file .typ
folder_path = "."

# Chiama la funzione per sostituire il testo nei file
replace_text_in_files(folder_path)
