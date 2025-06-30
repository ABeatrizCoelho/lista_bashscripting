#!/usr/bin/bash

read -p "Digite o primeiro número: " primeiro
read -p "Digite o segundo número: " segundo
read -p "Digite o terceiro número: " terceiro

if [ "$primeiro" -ge "$segundo" ] && [ "$primeiro" -ge "$terceiro" ]; then
  echo "O maior número é: $primeiro"
elif [ "$segundo" -ge "$primeiro" ] && [ "$segundo" -ge "$terceiro" ]; then
  echo "O maior número é: $segundo"
else
  echo "O maior número é: $terceiro"
fi



