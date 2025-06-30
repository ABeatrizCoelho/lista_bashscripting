#!/usr/bin/bash


read -p "Digite o comprimento da caixa: " comprimento
read -p "Digite a largura  da caixa: " largura
read -p "Digite a altura da caixa: " altura

V=$((comprimento * largura * altura))

echo "O volume da caixa é: $V unidades cúbicas"
