#!/usr/bin/bash
read -p "Digite o primeiro número (A): " A
read -p "Digite o segundo número (B): " B

resultado=$(( (A - B) * (A - B) ))

echo "O quadrado da diferença entre $A e $B é: $resultado"