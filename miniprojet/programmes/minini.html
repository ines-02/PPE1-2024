#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 urls"
    exit 1
fi

#je declare une variable pour le fichier HTML de sortie
output_html="../tableaux/tableau-fr.html"

#je cree l'entête HTML et la structure du tableau
echo "<!DOCTYPE html>" > $output_html     #définit le type de document
echo '<html lang="fr">' >> $output_html    #spécifier la langue
echo "    <head>" >> $output_html
echo "        <title>Analyse des URLs</title>" >> $output_html     #Le titre de la page HTML est défini comme "Analyse des URLs"
echo '        <meta charset="UTF-8" />' >> $output_html     ##spécifier l'encodage des caractères.

echo '        <link rel="stylesheet" type="text/css" href="IG.css" />' >> $output_html    #Une feuille de style CSS externe (IG.css) est liée, ce qui permet de personnaliser l'apparence du tableau.
echo "    </head>" >> $output_html

echo "    <body>" >> $output_html
echo '        <div style="width: 80%; margin: 0 auto; padding-top: 15px;">' >> $output_html
echo '        <table border="1" width="100%"> ' >> $output_html    #personalisation du tableau
echo '            <caption style="padding-bottom:20px;"><strong><u><center>Suite du Miniprojet</center></strong></u></caption>' >> $output_html
echo "            <thead>" >> $output_html
echo "                <tr>" >> $output_html
echo '                    <th>Numéro</th>' >> $output_html   #colunnes
echo '                    <th>URL</th>' >> $output_html
echo '                    <th>Code HTTP</th>' >> $output_html
echo '                    <th>Nombre de mots</th>' >> $output_html
echo '                    <th>Encodage</th>' >> $output_html
echo "                </tr>" >> $output_html
echo "            </thead>" >> $output_html
echo "            <tbody>" >> $output_html


line_number=1

# Lecture du fichier passé en argument
while read -r line; do
    # Ajout du préfixe http:// si nécessaire
    if [[ ! "$line" =~ ^https?:// ]]; then
        line="http://$line"
    fi

    # Récupération du  code HTTP
    code_http=$(curl -o /dev/null -s -w "%{http_code}" "$line")

    # Récupération de l'encodage
    encodding=$(curl -sI "$line" | grep -i "content-type" | sed -n "s/.*charset=//p")
    if [ -z "$encodding" ]; then
        encodding="Non spécifié"
    fi

    # Récupération de le nombre de mots
    countword=$(curl -s "$line" | wc -w)

    # Je ajoute les données dans une ligne du tableau HTML
    echo "<tr>" >> $output_html
    echo "    <td>$line_number</td>" >> $output_html
    echo "    <td><a href=\"$line\" target=\"_blank\">$line</a></td>" >> $output_html
    echo "    <td>$code_http</td>" >> $output_html
    echo "    <td>$countword</td>" >> $output_html
    echo "    <td>$encodding</td>" >> $output_html
    echo "</tr>" >> $output_html

    ((line_number++))  
done < "$1"


echo "        </tbody>" >> $output_html
echo "    </table>" >> $output_html
echo "    </div>" >> $output_html
echo "    </body>" >> $output_html
echo "</html>" >> $output_html

echo "Le fichier HTML a été généré avec succès : $output_html"
