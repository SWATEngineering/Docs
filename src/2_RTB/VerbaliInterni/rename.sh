#!/bin/bash

prefisso="VerbaleInterno_"

for dir in ${prefisso}*/; do
    # Estrai la parte numerica dal nome della directory
    data_part="${dir#${prefisso}}"
    data_part="${data_part%/}"

    # Inverti l'ordine della data
    nuova_data=$(date -d"${data_part:4:2}-${data_part:2:2}-${data_part:0:2}" +"%y%m%d")

    # Costruisci il nuovo nome della directory
    nuovo_nome="${prefisso}${nuova_data}"

    # Rinomina la directory
    mv "${dir}" "${nuovo_nome}"
done
