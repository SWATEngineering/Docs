#!/bin/bash

set -e

compile_letter() {
    typst compile main.typ LetteraDiPresentazione.pdf --font-path=assets/fonts
}

# Function to check if a file exists in the current directory
check_file() {
    if [ -e "$1" ]; then
        echo "    File $1 found in $PWD"
        if [ "$2" == "LetteraDiPresentazione" ]; then
            echo "    Compiling letter..."
            compile_letter || exit 1
        else
            echo "    Compiling changelog..."
            "$base_dir"/typst_compile.sh || exit 1
        fi

        path="$PWD"
        to_remove=src/
        new_path=$(dirname "$path" | sed 's/src/build/')

        echo "    Removing existing pdf"
        set +e
            rm -r $new_path/$(basename "$PWD")*.pdf
        set -e

        echo "    Recreating folder $new_path (if does not exists)"
        mkdir -p $new_path
        # remove old pdf

        # mv new pdf
        echo "    Moving document"
        mv ./$(basename "$PWD")*.pdf $new_path/
    fi
}

# Function to iterate over all subdirectories and check for the file
search_file() {
    for dir in "$1"/*; do
        if [ -d "$dir" ]; then
            echo "Searching in $dir"
            (cd "$dir" && check_file "$2" $(basename "$dir"))
            search_file "$dir" "$2"
        fi
    done
}

# Provide the directory to start the search and the file to be checked
start_directory="."
#base_dir="/home/runner/work/Docs/Docs/src"
base_dir="/Users/rango/SWAT/Docs/src"
file_to_check="main.typ"

# Call the function with the starting directory and the file to be checked
search_file "$start_directory" "$file_to_check"
