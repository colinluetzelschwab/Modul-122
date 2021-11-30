#!/bin/bash
# Programm: zahlenraten.sh
# Aufruf: ./zahlenraten.sh
# Zahlen erraten
# Autor: Colin Lützelschwab
# Version: 1.0
echo "welcome to number guessing"
read -p "please enter a number " enteredNumber

end=0
numberToGuess=$(($RANDOM % 20 + 1))

tries=4
echo "left tries: " $tries

until [[ $end -eq "1" ]]; do
  if ((enteredNumber >= 1 && enteredNumber <= 20 && tries > 0)); then
    if [[ $enteredNumber -eq $numberToGuess ]]; then
      end=1
      echo "Number us correct " $numberToGuess
      exit
    elif ((enteredNumber >= $numberToGuess)); then
      read -p "enter a smaller number: " enteredNumber
      tries=$((tries - 1))
      echo "left tries: " $tries

    else
      read -p "please enter a bigger number: " enteredNumber
      tries=$((tries - 1))
      echo "left tries: " $tries
    fi
  elif [[ tries -eq "0" ]]; then
    echo "no tries remaining"
    echo "You lost, the number was: " $numberToGuess
    exit
  else
    read -p "The number is too big, please enter a number between 1 and 20 " enteredNumber
    echo "left tries: " $tries

  fi
done