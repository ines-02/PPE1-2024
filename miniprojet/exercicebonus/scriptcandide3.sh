#!/bin/bash

if [ -z "$1" ]; then
  echo "Specifiez le chemin du fichier en argument."
  exit 1
fi

fileentre="$1"


num_bigrames=25
if [ ! -z "$2" ]; then
  num_bigrames="$2"
fi

if ! [[ "$num_bigrams" =~ ^[0-9]+$ ]]; then
  num_bigrams=25
fi
# Appel au script1
./scriptcandide1.sh "$fileentre"

paste -d ' ' "candide_clean.txt" "candide_clean.txt" | awk '{print $1, $2}' > bigrams.txt
# Compter les occurrences des bigrames, trier par fréquence et afficher les bigrames les plus fréquents
echo "Les $num_bigrams bigrammes les plus fréquents dans le texte :"
cat "bigrams.txt" | sort | uniq -c | sort -nr | head -n "$num_bigrams" | awk '{print $2, $3, "->", $1}'

