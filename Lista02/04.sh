#!/usr/bin/bash

read -p "Filename? " Filename

if [ -d "$Filename" ]; then
    echo "É um diretório"
else
    echo "Não é um diretório"
fi
