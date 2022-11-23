#!/bin/bash
################################################################################
##  Fichier: start-psql.sh                                                    ##
##  Auteur : BAAM                                                             ##
##                                                                            ##
##  Script Bash pour lancer PSQL                                              ##
##                                                                            ##
##  Usage : './start-psql.sh [-h|--help|-u|--usage] [-o <output>] <login>'    ##
##      <login> : le login de l'IUT                                           ##
##      [-h|--help|-u|--usage] : affiche l'usage                              ##
##      [-o <output>] : écrit tout les retours de requêtes dans <output>      ##
##                                                                            ##
################################################################################

C_RED='\e[1;31m'
C_RES='\e[0m'

#OUTPUT=
#LOGIN=

# affichage usage
usage () {
    echo "Usage: './start-psql.sh [-h|--help|-u|--usage] [-o <output>] <login>'"
    echo -e "\t<login> : le login de l'IUT"
    echo -e "\t[-h|--help|-u|--usage] : affiche l'usage"
    echo -e "\t[-o <output>] : écrit tout les retours de requêtes dans <output>"
}

# gestion erreur ($1:msg; $2:code retour)
erreur () {
    echo -e "${C_RED}Erreur: $1${C_RES}"; usage
    exit $2
}

# erreur: aucun arguments
[ $# -eq 0 ] && erreur '1 argument manquant' 1

# traitement des arguments
while [ $# -ne 0 ]; do
    case $1 in
        '-h'|'--help'|'-u'|'--usage')
            usage
            exit 0
            ;;
        '-o')
            OUTPUT="-o $2"
            shift 2 || erreur 'output manquant' 3
            ;;
        *)
            LOGIN="$1"
            shift
            ;;
    esac
done

# erreur: login manquant
[ -z $LOGIN ] && erreur 'login manquant'

# évaluation de la commande
eval "psql -h londres -d db$LOGIN -U $LOGIN -W $OUTPUT"
exit 0
