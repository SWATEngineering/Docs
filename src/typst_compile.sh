#!/bin/bash

# Get the CSV file name from the command line argument
csv_file="changelog.csv"

# Read the first column of the last row in the CSV file
last_row=$(tail -n 1 "$csv_file")
file_version=$(echo "$last_row" | awk -F',' '{print $1}')

# Read the name of the immediate parent folder of the CSV
# file, to give the name to the output file
file_name=$(basename $(pwd))

typst compile main.typ ${file_name}_${file_version}.pdf --font-path=assets/fonts