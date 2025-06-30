#!/usr/bin/bash

read -p "Digite um número inteiro menor que 1000: " numero

if [ "$numero" -ge 1000 ]; then
  echo "Apenas valores até 1000 são permitidos!"
  exit 1
fi

centena=$((numero / 100))
dezena=$(((numero % 100) / 10))
unidade=$((numero % 10))

echo -n "$numero = "

# Centena
if [ "$centena" -eq 1 ]; then
  echo -n "1 centena, "
else
  echo -n "$centena centenas, "
fi

# Dezena
if [ "$dezena" -eq 1 ]; then
  echo -n "1 dezena, "
else
  echo -n "$dezena dezenas, "
fi

# Unidade
if [ "$unidade" -eq 1 ]; then
  echo "1 unidade"
else
  echo "$unidade unidades"
fi