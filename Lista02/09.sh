#!/usr/bin/env bash

# Entrada dos dados
read -p "Digite a quantidade de aulas dadas: " aulas_dadas
read -p "Digite o registro acadêmico (RA): " ra
read -p "Digite o nome do aluno: " nome
read -p "Digite a quantidade de presenças: " presencas
read -p "Digite a nota 1 (peso 2): " n1
read -p "Digite a nota 2 (peso 3): " n2
read -p "Digite a nota 3 (peso 1): " n3
read -p "Digite a nota 4 (peso 4): " n4

# Cálculo da frequência e da média ponderada
faltas=$((aulas_dadas - presencas))
frequencia=$(awk "BEGIN { printf \"%.2f\", ($presencas / $aulas_dadas) * 100 }")
media=$(awk "BEGIN { printf \"%.2f\", (($n1 * 2) + ($n2 * 3) + ($n3 * 1) + ($n4 * 4)) / 10 }")

# Determinar situação
frequencia_num=$(awk "BEGIN { print ($frequencia >= 75) }")
media_num=$(awk "BEGIN { print ($media >= 6) }")

if [ "$media_num" -eq 0 ] && [ "$frequencia_num" -eq 1 ]; then
    situacao="Reprovado por Nota"
elif [ "$media_num" -eq 0 ] && [ "$frequencia_num" -eq 0 ]; then
    situacao="Reprovado por Nota e Frequência"
elif [ "$media_num" -eq 1 ] && [ "$frequencia_num" -eq 0 ]; then
    situacao="Reprovado por Frequência"
else
    situacao="Aprovado por Nota e Frequência"
fi

# Exibição dos resultados
echo
echo "Aluno: $ra - $nome"
echo "Notas: $n1 $n2 $n3 $n4 Média final: $media"
echo "Aulas dadas: $aulas_dadas Faltas: $faltas Frequência: $frequencia %"
echo "----------------------------------------"
echo "Situação: $situacao"
