# Journal de bord du projet encadré

## Seance 1 - Introduction    *25/09/2024*

Existence et importance du système de fichiers
Commandes basics (mkdir,ls,cd, zip...):

* mkdir : creer un dossier
* ls : Liste les fichiers et dossiers dans un répertoire
* cd : Change le répertoire courant (exemple : cd /home/jules)
* rm : Supprime des fichiers (exemple : rm fichier.txt).
* mv : Déplace ou renomme des fichiers ou des dossiers (exemple : mv fichier.txt /home/jules).
* cp : Copie des fichiers ou des dossiers (exemple : cp fichier.txt /home/jules).
* zip : compresser une archive zip
* pwd : print working directory 

*J'ai eu des difficultés à réaliser les exercices au début, surtout avec la commande mkdir (jusqu'à ce que je comprenne comment tout fonctionnait). J'ai réussi à réaliser le reste de l'exercice, mais à la fin, je n'ai pas pu transformer le document en zip, car une erreur se produisait. Mais j'ai mis le document au format tar.*   


## Seance 2 - GIT manipulation de fichiers        *02/10/2024*

- Creation d'une clé 
- Creation d'un repartoire (PPE-2023) SUR GITHUB
- Creation d'un fichier sur Github (journal.md)
- Syncronisation de mon repartoire avec mon ordinateur en utilisant git fetch pour verifier si c'est à jour et après git pull pour mettre à jour. Avec la commande git status j'ai verifier si la commande a reussi.
- Utilisation de la commande -vim pour modifier mon fichier journal.md (avant esc i, quand je finis esc :x)
- Creation d'une tag

###### Resume des commandes que j'appris importants:
* git push- deposer les fichiers- envoyer sur internet
* git pull- recuperer les fichiers deposés sur un git
* git fetch - mettre à jour sur le depôt
* git add <fille>- ajuoute modifications avant de valider
* git commit [-m message] - nouvelles modifications ajoutées 
* git status - etat de notre depot
* git log- permet voir tous les commits
* git tag [-a] [-m message] <tagname> [commit]
* git push origin <tagname>-pousser un tag vers github

*J'ai un peu de difficulté à comprendre au début les commandes git, mais avec les exercices j'ai mis en pratique et j'ai commencé à comprendre comment actualiser le git. J'ai pas eu de difficultés avec les exercices*

## Seance 3 - Pipelines               *09/10/2024*

- Commandes pipelines (wc, cat, grep ...)
- Commandes git pour supprimer les erreurs

###### Resume commandes pipelines importants:
* wc [options] [fichier] - afficher le nombre de lignes, de mots et de caractères dans un fichier ou une entrée standard
	-l : Affiche uniquement le nombre de lignes dans le fichier.
	-w : Affiche uniquement le nombre de mots.
	-c : Affiche uniquement le nombre d’octets (ou de caractères en fonction du fichier).
    -m : Affiche le nombre de caractères, indépendamment de la taille en octets.
	-L : Affiche la longueur de la ligne la plus longue.
Exemple:'wc fichier.txt'
Résultat typique :
10  50  300 fichier.txt
Cela signifie que le fichier contient :
•	10 lignes
•	50 mots
•	300 octets (ou caractères selon l’encodage)

echo "Bonjour le monde" | wc -w
Résultat :3
Cela montre que la phrase contient 3 mots.
* wc > output.txt - copie le text dans un nouveu fichier
* wc fic.txt &> output.txt- utilise wc pour compter les lignes, mots et caractères d'un fichier, tout en redirigeant à la fois la sortie standard et la sortie d'erreur vers un fichier.
* wc fic.txt 2> errors.txt- utilise wc pour compter les lignes, mots et caractères d'un fichier tout en redirigeant les messages d'erreur vers un fichier séparé. 
  < : Remplace l'entrée par le contenu d'un fichier.
  > ou 1> : Écrit la sortie standard dans un fichier.
  2> : Écrit la sortie d'erreur dans un fichier.
  &> : Écrit à la fois la sortie standard et la sortie d'erreur dans un fichier. 
* Cat nomfichier-regarder le contenue 
* Cat > fichier.txt -créer un fichier et ecrire
* Touch fichier.txt - créer le fichier
* grep "mot" fichier.txt- Permet de rechercher des motifs spécifiques dans un fichier
* sort fichier.txt- triera les lignes par ordre alphabétique.
* uniq-  Supprime les lignes dupliquées dans un fichier(Pour l'utiliser, on combine souvent avec sort, par exemple : sort fichier.txt | uniq)
* echo - Affiche du texte à l'écran. (c'est comme print en python)
* echo "message" >> fichier.txt- écrit la message dans le fichier
* cut- Sélectionne des colonnes spécifiques d'un fichier tabulaire(Par exemple, cut -d',' -f1 fichier.csv affichera la première colonne d'un fichier CSV).
* tail - Affiche les dernières lignes d'un fichier ou d'un flux.(Par défaut, tail fichier.txt affichera les 10 dernières lignes. On peut spécifier le nombre de lignes avec l'option -n, comme tail -n 5 fichier.txt.)

###### Resume commandes git hub corriger les erreurs

* git reset-permet de faire machine arrière dans les commits. La commande permet de revenir dans le passé commit par commit.
* git reset HEAD ̃-Revient à dernière la version du dépôt et annule la mise-en-place (staging ).
* git reset --soft HEAD ̃-Revient à dernière la version du dépôt mais n’annule la mise-en-place (staging ).(Réinitialise le pointeur de branche, mais garde les modifications dans l'index. Idéal si tu veux faire des ajustements avant de commettre.)
* git reset --hard- Revient à la version HEAD. Vous perdrez tous les changements que vous avez fait.
* git reset <commit>( <commit> peut être :l’identifiant SHA du commit (longue chaîne de lettre et nombres) ou un tag)
* git revert- Cette commande crée un nouveau commit qui annule les modifications d'un commit précédent, sans modifier l'historique des commits. C'est utile pour annuler des modifications sans supprimer l'historique
* git revert <commit> - Crée un nouveau commit où les changements sont annulés.
* git stash- Cette commande permet de mettre de côté (stocker) temporairement des modifications non validées dans l'index et le répertoire de travail, afin de revenir à un état propre sans perdre ces modifications.
* git stash pop- Récupère les modifications stockées et les applique à l'état de travail actuel.
* git stash list - Affiche la liste des stashes stockés.
* git stash push-Git sauvegarde toutes les modifications non validées dans l'index et dans le répertoire de travail. Cela inclut les fichiers modifiés et les nouveaux fichiers non suivis, si vous utilisez les options appropriées.
Options courantes :
 -m ou --message : Vous permet d'ajouter un message pour identifier plus facilement ce stash plus tard.exemple:git stash push -m "Travail sur la fonctionnalité X"
* git stash drop <stash>-Supprime manuellement un stash.
* git stash show- vous obtiendrez un résumé des fichiers modifiés et des modifications dans le dernier stash. Cela vous donnera une idée des changements que vous avez mis de côté.
Pour voir les détails des modifications (différences) dans le stash, vous pouvez utiliser l'option -p (ou --patch) :
git stash show -p    -Cela affichera un diff complet, montrant les ajouts et les suppressions ligne par ligne.

###### Exercice pipelines (observations)

*J'ai bien compris les pipelines , les exercices sur les pipelines etaient pas trop difficiles cependant j'ai pris un peu de temps pour trouver la commande de l'exercice 2.a ( Établir le classement des 15 lieux les plus cités pour chaque année): cat 2016/*/* | grep Location | cut -f3 | sort | uniq -c | sort -nr | head -n 15 >> classement_2016.txt.*
cat 2016/*/* : affiche le contenu de tous les fichiers dans tous les sous-répertoires du répertoire 2016.
* | grep Location : grep Location recherche et filtre les lignes contenant le mot "Location".
* | cut -f3 : Cette commande utilise cut pour extraire le troisième champ (ou colonne) de chaque ligne.
* | sort : sort trie les lignes résultantes par ordre alphabétique. Cela prépare les données pour la prochaine étape.
* | uniq -c : supprime les doublons et compte le nombre d'occurrences de chaque ligne. Le résultat sera une liste où chaque ligne est précédée de son nombre d'occurrences.
* | sort -nr : Cette commande trie à nouveau les lignes, mais cette fois-ci par nombre d'occurrences en ordre décroissant (-n pour numérique, -r pour inverse). Cela permet de voir les lignes les plus fréquentes en premier.
* | head -n 15 : prend les 15 premières lignes du résultat trié, ce qui signifie que vous obtiendrez les 15 "locations" les plus fréquentes.

 *Au debut j'ai eu aussi difficulté en trouvé comment Compter le nombre d’annotations par année (2016, 2017 et 2018), parce que je faisais la commande : cat 2016 | grep "2016" | wc -l , et le resultat etait 0. Aprés beucoup essayer j'ai comppris qu'il manquait "/ * / * " :cat 2016/*/* | grep "2016" | wc -l >> comptes.txt*

 
###### Exercice corriger les erreurs Github

*J'ai eu beaucoup de difficultés à comprendre le fonctionnement de  git revert et git reset, !!!*


## Exercice Git II : corriger des erreurs
Cette ligne doit rester apres correction

Ceci est un exemple d'erreur.

<<<<<<< Updated upstream
correction d'erreur
=======

je cree un conflit
>>>>>>> Stashed changes

## Seance 4- Scripts        *16/10/2024*      

- Les scripts

###### Resume Scripts
Il suffit d’écrire des commandes dans un fichier texte pour obtenir un script.
- ajouter des commentaires #
- ajouter un shebang #!/usr/bin/bash
- rendre le fichier exécutable (avec chmod +x)
Par convention, au début de l’exécution d’un script, l’interpréteur donne la valeur
des arguments aux variables $1 $2 $3 . . .ex: fichier=$1
Conditions possibles:
a -eq b si a est égal à b (equal)
a -ne b si a est différent de b (not equal)
a -lt b si a est plus petit que b (less than)
a -gt b si a est plus grand que b (greater than)
a -le b si a est inférieur ou égal à b
a -ge b si a supérieur ou égal à b

## EXERCICE Lire le code de la dernière diapo et décrire son fonctionnement dans votre journal de bord.
- (#!/usr/bin/bash) = le script doit être exécuté avec l'interpréteur Bash.
- (if [ $# -ne 1 ]; then
    echo "Ce programme demande un argument"
    exit
fi)=C'est une condition qui vérifie si le nombre d'arguments est différent de 1 (-ne signifie "not equal"). Si ce n'est pas le cas, un message est affiché (echo) et le script se termine avec exit.
- (FICHIER_URLS=$1) = le premier argument
- (OK=0 et NOK=0)= valeurs de 2 variables
- (while read -r LINE; do) =  lit le fichier ligne par ligne et chaque ligne est stockée dans la variable LINE.
- (echo "La ligne : $LINE")= le script va afficher la variable pour chaque ligne
- (if [[ $LINE =~ ^https?:// ]]; then)=condition vérifie si la ligne commence par "http://" ou "https://". (le ? indique que le s est optionnel)
- (echo " ressemble à une URL valide " OK=$(expr $OK + 1))=Si la ligne est valide, le compteur OK est incrémenté de 1 et il afiche la message (echo)
- (else echo " ne ressemble pas à une URL valide "NOK = $ ( expr $NOK + 1))= Sinon, le compteur NOK est incrémenté de 1 et il affiche la message (echo)
- (done echo "$OK URLs et $NOK lignes douteuses")= on finis la condition avec done , et il affiche les resultats de les variables(le nombre total d'URLs valides et le nombre de lignes qui ne ressemblent pas à des URLs valides).
- (done < $FICHIER_URLS) connecte la boucle while à un fichier

###### Notes sur l'exercice
*J'ai eu de difficultés à comprendre les variables et les conditions, j'ai besoin de m'etrainer plus et être plus familiarizé avec tout ça* 

## Séance 5- editeurs de text et web    *23/10/2024*

- éditeurs de texte (helix, vim, nano, micro)
- web (HTML,HTTP,LYNUX,wget,cURL)
      
###### Resume Web
PAGE WEB

projet:contenue textuel d’une page web

HTML- langage de balisage pour representer des pages web- format unique

head- on define le title de la page et le code

title

le code de statut (3. HTTP Response) permet d’avoir une idée du résultat d’une requête.

**lynx (page web)-**  Lynx est un navigateur web en terminal. Cela lui donne des propriétés
particulièrement intéressantes (affichage dépouillé).

Lynx permet de récupérer et afficher dans le terminal (sans navigation) une page
web avec uniquement du texte et des liens.
Deux options permettent de :

1. récupérer le contenu textuel d’une page pour l’afficher (sans navigation) → option -dump
2. retirer la liste des liens d’une page à l’affichage → option -nolist

**wget et cURL (client URL Request Library )** sont deux commandes qui vont pouvoir
nous permettre de récupérer des pages web sans passer par un navigateur. Les deux
commandes ont des différences qui les rendent intéressantes, même si on
privilégiera cURL.

la différence principale entre les deux commandes et que wget écrit dans un fichier et cURL écrit dans le terminal.
curl URL
Quelques options utiles :
• -i : va donner des informations sur l’interaction avec le serveur
• -L : suit les redirections
• -o fichier : indique un fichier de sortie
• d’autres options à voir par vous-même : -I4 , -w, -s

Regardons déjà les cas où ça va (ou ça fait semblant d’aller ?) :
curl -i [https://www.perdu.com](https://www.perdu.com/)
curl -i [https://www.google.com](https://www.google.com/)
Et les cas où ça ne va pas :
curl -i [http://www.github.com](http://www.github.com/)
curl -i [http://www.plurital.org](http://www.plurital.org/)

Ce qu’on voit avec ces commandes, ce sont des informations sur la réponse du serveur. Deux lignes nous intéressent tout particulièrement :
• La première de chaque bloc d’entête : HTTP/1.1 XZY <message>
• Celle souvent juste après : content-type: <informations>
Il s’agit d’un résumé de la communication entre le client (nous) et le serveur (le site hébergé quelque part sur le net). Ces informations sont issues du protocole HTTP.

sudo apt install npm

npm i bash-language-server


## Séance 6- Script de base et fichiers de URL            *6/11/2024*
 exercices 1 et 2 dans les slides (lecture du fichier d'URL, récupération des codes HTTP et de l'encodage de la page)
###### Notes sur l'exercice
*j'ai pas eu trop de difficultés 
*-curl fait l'extration du contenu des Urls.


## Séance 7-Introdution à HTML            *13/11/2024*


###### Notes sur l'exercice
*J'ai pas reussi à faire l'exercice bonus sur les bigrammes correctement.Il affiche des mots repetés. Était trés difficil et j'ai pas trouvé une solution.*



## Séance 8-Créer et déployer une page web             *20/11/2024*
###### Notes sur l'exercice
*J'ai géneré ma page web pour l'exercice du mini projet, j'ai bien aimé !
Quelques choses importantes:
- En premier specifier le type de document :"!DOCTYPE html" (tout entre valises) 
- html +/html (dubut et fin)
- titre  website: title 
- type d'encodage : meta charset=”UTF-8”
- type d'heading ( h1-h6)  h1 c'est le plus grand
- paragraphes:p
- noir:b
- italique:i
- space sans rien:br/
- line to separete:hr/
- lettre grand ou petit :big; small
- commentaire !— ola —
taille lettre : font-size:20px
border:  style=”border: 1px(espessura) solid black”
- le top : header 
-  navigation menu nav
- millieux:main
footer informação adicional
- Create a link :a href="https://github.com/ines-02">Mon GITHUB /a
- ouvrir une noveaux page:a href="https://github.com/ines-02" target="_blank">Mon GITHUB /a
- images:
img src=”www.” alt “message si limage est removu” /
- dimensions:img width=”100” height=”110”src=”www.” alt “mensagem que aparece caso a imagem seja removida” /
- image avec link:
a href=”ajcnceniw”
img src=”www.” alt “mensagem que aparece caso a imagem seja removida” />/a
- liste:
ul
li apples li
li lemons li
ul
(si on utilise ol et pas ul la liste sera enumeré, on peut aussi utiliser comme ça : ol type”A” 

## Decembre- travail sur le projet de groupe
- journal du group 

