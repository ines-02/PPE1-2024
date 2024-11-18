#!/bin/bash

if [ -z "$1" ]; then
  echo "Specifiez le chemin du fichier en argument."
  exit 1
fi

fileentre="$1"


num_words=25
if [ ! -z "$2" ]; then
  num_words="$2"
fi

# Appel au script1
./scriptcandide1.sh "$fileentre"


# Compter les occurrences des mots, trier par fréquence et afficher les  mots les plus fréquents
echo "Les $num_words mots les plus fréquents dans le texte :"
cat "candide.txt" | sort | uniq -c | sort -nr | head -n "$num_words" | awk '{print $2, "->", $1}'

