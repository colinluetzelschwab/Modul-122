#!/bin/bash
#
# Autor: Colin Lützelschwab
# Datum: 10.09.2021
if ps | grep-q $1
then
  echo "Der Prozess $1 läuft gerade."
else
  echo "Der Prozess $1 läuft nicht."
fi