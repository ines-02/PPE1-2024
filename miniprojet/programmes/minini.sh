#!/usr/bin/env bash

# Vérification du nombre d'arguments
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 urls"
    exit 1
fi

# Assignation du fichier passé en argument
urls=$1

# Vérification de l'existence du fichier
if [ ! -f "$urls" ]; then
    echo "Erreur: le fichier n'existe pas"
    exit 1
fi

# Initialisation du compteur de lignes
line_number=1

# Lecture du fichier ligne par ligne
while read -r line
do
    # Ajouter 'http://' si l'URL ne commence pas par http:// ou https://
    if [[ ! "$line" =~ ^https?:// ]]; then
        line="http://$line"
    fi

    # Récupérer le code HTTP de la réponse avec curl, suivre les redirections (-L)
    http_code=$(curl -s -o /dev/null -w "%{http_code}" -L "$line")

    # Récupérer le nombre de mots de la page avec curl et wc
    word_count=$(curl -s -L "$line" | wc -w)

    # Vérifier si le code HTTP est supérieur ou égal à 400 (Erreur)
    if [ "$http_code" -ge 400 ]; then
        echo -e "${line_number}\t${line}\t${http_code}\tErreur\t${word_count}"
    else
        # Si le code HTTP est OK (inférieur à 400)
        echo -e "${line_number}\t${line}\t${http_code}\tOK\t${word_count}"
    fi

    # Incrémentation du compteur de ligne
    ((line_number++))
done < "$urls"

