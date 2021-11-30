#!/bin/bash
# Name: Umgestalten.sh - Umgestalten grosser Datenmengen
#
# Benutzung:
# Umgestalten.sh fileOutput fileInput
#
# Autor: Colin Lützelschwab
# Datum: 17.10.2021
if test $# -ne 2; then
    echo "Sie müssen Dateinnamen als Argumente eingeben."
    echo "Anwendung: ./Umgestalten.sh Eingabefile Ausgabefile"
    exit 1
fi
if [ ! -f "$1" ]; then
    echo "Error, $1 does not exist."
    exit 1
fi
if [ ! -f "$2" ]; then
    echo "Error, $2 does not exist."
    exit 1
fi
grep -w "2	[0-9][  ,0-9]" "$1" | cut -f 3,4 | tr -d "'" | sort -k 1 -V >"$2"