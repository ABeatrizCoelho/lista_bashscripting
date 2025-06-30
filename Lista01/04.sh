#!/usr/bin/bash


read -p "Digite sua idade em dias: " total_dias


anos=$(( total_dias / 360 ))
resto=$(( total_dias % 360 ))
meses=$(( resto / 30 ))
dias=$(( resto % 30 ))


echo "A pessoa tem $anos ano(s), $meses mes(es) e $dias dia(s)."
