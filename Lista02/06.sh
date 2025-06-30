#!/usr/bin/env bash

read -p "Digite i (1, 2 ou 3): " i
read -p "Digite a (inteiro): " a
read -p "Digite b (inteiro): " b
read -p "Digite c (inteiro): " c


primeiroTermo=
segundoTermo=
terceiroTermo=

# Encontrar o maior
if [ "$a" -ge "$b" ] && [ "$a" -ge "$c" ]; then
  primeiroTermo=$a
elif [ "$b" -ge "$a" ] && [ "$b" -ge "$c" ]; then
  primeiroTermo=$b
else
  primeiroTermo=$c
fi

# Encontrar o menor
if [ "$a" -le "$b" ] && [ "$a" -le "$c" ]; then
  terceiroTermo=$a
elif [ "$b" -le "$a" ] && [ "$b" -le "$c" ]; then
  terceiroTermo=$b
else
  terceiroTermo=$c
fi

# Encontrar o do meio
if [ "$a" != "$primeiroTermo" ] && [ "$a" != "$terceiroTermo" ]; then
  segundoTermo=$a
elif [ "$b" != "$primeiroTermo" ] && [ "$b" != "$terceiroTermo" ]; then
  segundoTermo=$b
else
  segundoTermo=$c
fi

# Saídas de acordo com i
if [ "$i" -eq 1 ]; then
  # ordem crescente: menor meio maior
  echo "$terceiroTermo, $segundoTermo, $primeiroTermo"
elif [ "$i" -eq 2 ]; then
  # ordem decrescente: maior meio menor
  echo "$primeiroTermo, $segundoTermo, $terceiroTermo"
elif [ "$i" -eq 3 ]; then
  # maior no meio: menor maior meio
  echo "$terceiroTermo, $primeiroTermo, $segundoTermo"
else
  echo "Valor de i inválido! Use 1, 2 ou 3."
fi
