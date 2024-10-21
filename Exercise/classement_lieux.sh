#!/usr/bin/bash

ANNEE=$1
MOIS=$2
N_LIEUX=$3

if [ "$ANNEE" == "*" ] && [ "$MOIS" == "*" ]; then
	cat ann/$ANNEE/$MOIS/*.ann | grep "Location" | cut -f3 | sort | uniq -c | sort -nr | head -n $N_LIEUX 
elif [ "$ANNEE" == "*" ]; then
	cat ann/$ANNEE/$MOIS/*.ann | grep "Location" | cut -f3 | sort | uniq -c | sort -nr | head -n $N_LIEUX 
elif [ "$MOIS" == "*" ]; then
	cat ann/$ANNEE/$MOIS/*.ann | grep "Location" | cut -f3 | sort | uniq -c | sort -nr | head -n $N_LIEUX
else
	cat ann/$ANNEE/$MOIS/*.ann | grep "Location" | cut -f3 | sort | uniq -c | sort -nr | head -n $N_LIEUX


fi




