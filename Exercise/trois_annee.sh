#!/usr/bin/bash

TYPE_ENTITE=$1

ANNEES=(2016 2017 2018)

for ANNEE in "${ANNEES[@]}"; do
    ./compte_anne_ententis.sh $ANNEE $TYPE_ENTITE
done










