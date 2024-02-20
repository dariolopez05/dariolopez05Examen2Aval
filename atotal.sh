#!/bin/bash

echo "Escribe un ciudad: "
consumo_total=0
read ciudad_p
num=`cat consumos.txt | grep -w "$ciudad_p" | wc  -l`

if [ $num -gt 0 ]; then

    while read ciudad mes ano consumo; do
        if [ $ciudad = $ciudad_p ]; then
                consumo_total=$((consumo_total+consumo))
        fi
        
done < consumos.txt

echo "El consumo total de $ciudad_p es de $consumo_total"

else
            echo "La ciudad introducida no existe :("
fi
