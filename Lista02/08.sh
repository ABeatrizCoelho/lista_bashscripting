#!/usr/bin/env bash

read -p "Digite a hora inicial (hh): " hi
read -p "Digite os minutos iniciais (mm): " mi
read -p "Digite a hora final (hh): " hf
read -p "Digite os minutos finais (mm): " mf

# Converte tudo para minutos
inicio_minutos=$((hi * 60 + mi))
fim_minutos=$((hf * 60 + mf))

# Se o fim for menor ou igual ao início, considera que o jogo terminou no dia seguinte
if [ "$fim_minutos" -le "$inicio_minutos" ]; then
  fim_minutos=$((fim_minutos + 24 * 60))
fi

# Calcula a duração
duracao_minutos=$((fim_minutos - inicio_minutos))
duracao_horas=$((duracao_minutos / 60))
duracao_restantes_minutos=$((duracao_minutos % 60))

# Exibe a saída
printf "Hora inicial=> %02d:%02d\n" "$hi" "$mi"
printf "Hora final=> %02d:%02d\n" "$hf" "$mf"
printf "Duração do jogo=> %02d:%02d\n" "$duracao_horas" "$duracao_restantes_minutos"
