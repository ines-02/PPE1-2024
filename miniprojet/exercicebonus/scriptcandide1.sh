#!/bin/bash

if [ -z "$1" ]; then
  echo " Spécifiez le chemin du fichier."
  exit 1
fi

file1="$1"
myfile="candide.txt"

# cleaning 
grep -oE '\w+' "$file1" | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]' > "$myfile"

# Afficher le résultat
cat "$myfile"

