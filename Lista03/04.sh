#!/usr/bin/bash

read -p "Digite o número de termos da sequência Tribonacci: " n

# Termos iniciais
t1=1
t2=1
t3=2

if [ "$n" -le 0 ]; then
  echo "Digite um número maior que zero."
  exit 1
fi

echo "Sequência Tribonacci com $n termos:"

for ((i=1; i<=n; i++)); do
  if [ $i -eq 1 ]; then
    echo -n "$t1"
  elif [ $i -eq 2 ]; then
    echo -n ", $t2"
  elif [ $i -eq 3 ]; then
    echo -n ", $t3"
  else
    tNext=$((t1 + t2 + t3))
    echo -n ", $tNext"
    t1=$t2
    t2=$t3
    t3=$tNext
  fi
done

echo