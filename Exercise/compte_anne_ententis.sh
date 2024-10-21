#!/usr/bin/bash

ANNEE=$1
TYPE_ENTITE=$2

cat ann/$ANNEE/*/*.ann | grep "$TYPE_ENTITE" | wc -l




