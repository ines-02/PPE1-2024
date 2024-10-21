#!/usr/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <année> <type_d'entité>"
    exit 1
fi


ANNEE=$1
TYPE_ENTITE=$2

cat ann/$ANNEE/*/*.ann | grep "$TYPE_ENTITE" | wc -l



exit 1

