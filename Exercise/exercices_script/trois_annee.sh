#!/usr/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0  <type_d'entité>"
    exit 1
fi
TYPE_ENTITE=$1

ANNEES=(2016 2017 2018)

for ANNEE in "${ANNEES[@]}"; do
    ./compte_anne_ententis.sh $ANNEE $TYPE_ENTITE
done

exit 1








