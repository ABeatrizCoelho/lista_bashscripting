#!/usr/bin/bash
read -p "Filename?" Filename
if [ ! -w $Filename ]; then
    echo "File cant be written!"
    exit 1
fi