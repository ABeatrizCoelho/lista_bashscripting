#!/usr/bin/bash
read -p "Filename? " Filename
if [ ! -e "$Filename" ]; then
    echo "Arquivo nao existe!"
    exit 1
fi