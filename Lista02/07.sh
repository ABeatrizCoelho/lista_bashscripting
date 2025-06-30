#!/usr/bin/bash

read -p "Digite sua idade" idade

if  [ "$idade" -ge 5 ] && [ "$idade" -le 7 ] ; then
    echo "Idade do competidor: $idade anos [categoria: Infantil A]."
elif  [ "$idade" -ge 8 ] && [ "$idade" -le 10 ] ; then
    echo "Idade do competidor: $idade anos [categoria: Infantil B]."
elif  [ "$idade" -ge 11 ] && [ "$idade" -le 13 ] ; then
    echo "Idade do competidor: $idade anos [categoria: Juvenil A]."
elif  [ "$idade" -ge 14 ] && [ "$idade" -le 17 ] ; then
    echo "Idade do competidor: $idade anos [categoria: Juvenil B]."
elif  [ "$idade" -ge 18 ] && [ "$idade" -le 59 ] ; then
    echo "Idade do competidor: $idade anos [categoria: adulto]."
elif  [ "$idade" -ge 60 ]; then
    echo "Idade do competidor: $idade anos [categoria: Senior]."
else
    echo "Idade do competidor: $idade anos [categoria: invalida]."
fi