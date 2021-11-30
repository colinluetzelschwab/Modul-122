#!/bin/bash
#
# Autor: Colin Lützelschwab
# Datum: 10.09.2021

du -h | sort
a=$(du -sb)
echo "Der totale Speicher beträgt " a