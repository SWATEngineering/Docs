# COME USARE
# 1) Spostarsi con il terminale nella cartella che contiene questo script python;
# 2) Comando cli da utilizzare: python3 glossary_check.py -d <path_per_arrivare_al_documento> -g <path_per_arrivare_al_glossario>

import sys
import re
import os


def trova_files_con_estensione_typ(cartella):
    risultati = []
    for cartella_corrente, _sottocartelle, files in os.walk(cartella):
        for file in files:
            if file.endswith(".typ"):
                risultati.append(os.path.join(cartella_corrente, file))
    return risultati


def check_glossary(glossary_path: str, document_path: str) -> str:
    glossary_terms = ""
    with open(glossary_path, "r") as file:
        glossary_terms = file.read()

    glossary_terms = set(
        map(
            lambda x: x[1].lower().strip()[:-1],
            filter(
                lambda x: (x[0] % 2 == 0), enumerate(re.split(r"\n|;", glossary_terms))
            ),
        )
    ) - set([""])

    document_text = ""
    with open(document_path, "r") as file:
        document_text = file.read()

    to_be_in_glossary_terms = set(
        map(
            lambda x: x.lower().strip(),
            re.findall(r'#glossary\("([^"]+)"\)', document_text)
            + re.findall(r"#glossary\[(.*?)\]", document_text),
        )
    )

    for tb_in_gloss_term in to_be_in_glossary_terms:
        memoized_terms[tb_in_gloss_term[:-1]] = tb_in_gloss_term

    to_be_in_glossary_terms = set(map(lambda x: x[:-1], list(to_be_in_glossary_terms)))

    if len(to_be_in_glossary_terms - glossary_terms) >= 1:
        error_message = "File analizzato: " + document_path + "\nElementi mancanti:\n"
        for term in to_be_in_glossary_terms - glossary_terms:
            error_message += memoized_terms[term]
            error_message += ", "
        error_message = error_message[:-2] + "\n\n"
        return error_message
    return ""


memoized_terms = {}

error_message = ""
for path_to_typ_file in trova_files_con_estensione_typ("."):
    if "2_RTB" in path_to_typ_file:
        error_message += check_glossary(
            "./src/2_RTB/Glossario/terms.csv", path_to_typ_file
        )
    elif "3_PB" in path_to_typ_file:
        error_message += check_glossary(
            "./src/3_PB/Glossario/terms.csv", path_to_typ_file
        )

if len(error_message) > 0:
    sys.exit(error_message[:-2])
