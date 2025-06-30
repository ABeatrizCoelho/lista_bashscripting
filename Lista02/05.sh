

read -p "Digite o lado A: " A
read -p "Digite o lado B: " B
read -p "Digite o lado C: " C


if [ "$A" -lt $(($B + $C)) ] && [ "$B" -lt $(($A + $C)) ] && [ "$C" -lt $(($A + $B)) ]; then
    resultado="Sim"
else
    resultado="Não"
fi

echo "Valores lidos: $A $B $C Pode formar um triângulo? ($resultado)."
