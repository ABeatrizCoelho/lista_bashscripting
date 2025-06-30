#!/usr/bin/bash

read -p "Digite uma string: " texto

tamanho=${#texto}

if [ "$tamanho" -eq 0 ]; then
    echo "A string está vazia"
elif [ "$tamanho" -lt 5 ]; then
    echo "A string é curta"
elif [ "$tamanho" -le 15 ]; then
    echo "A string é adequada"
else
    echo "A string é longa"
fi
