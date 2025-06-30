#!/usr/bin/bash

read -p "Digite uma temperatura em Fahrenheit" F

C=$(echo "scale=2; ($F - 32) * 5 / 9" | bc)

echo "$C C =  $F F"