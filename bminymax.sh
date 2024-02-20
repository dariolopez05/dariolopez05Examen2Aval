#!/bin/bash
min=100000000
max=0
touch info_max.txt
touch info_min.txt

while read ciudad mes ano consumo; do

    if [ $consumo -gt $max ]; then
        max=$consumo
        echo $ciudad $mes $ano > info_max.txt
    elif [ $consumo -lt $min ]; then
        min=$consumo
        echo $ciudad $mes $ano > info_min.txt
    fi

done < consumos.txt

echo "Mayor consumo: " 
cat info_max.txt
echo ""
echo "Menor consumo: "
cat info_min.txt

rm info_max.txt
rm info_min.txt