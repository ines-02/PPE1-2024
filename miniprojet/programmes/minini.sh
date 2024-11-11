#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 urls"
    exit 1
fi


urls=$1


if [ ! -f "$urls" ]; then
    echo "Erreur: le fichier n'existe pas"
    exit 1
fi

line_number=1


while read -r line
do
   
    if [[ ! "$line" =~ ^https?:// ]]; then
        line="http://$line"
    fi

    http_code=$(curl -s -o /dev/null -w "%{http_code}" -L "$line")

   
    word_count=$(curl -s -L "$line" | wc -w)

    if [ "$http_code" -ge 400 ]; then
        echo -e "${line_number}\t${line}\t${http_code}\tErreur\t${word_count}"
    else
      
        echo -e "${line_number}\t${line}\t${http_code}\tOK\t${word_count}"
    fi

   
    ((line_number++))
done < "$urls"

