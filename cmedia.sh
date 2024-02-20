#!/bin/bash
read -p "Escribe una ciudad: " ciudad_p
media=0

num=`cat consumos.txt | grep -w "$ciudad_p" | wc  -l`

if [ $num -gt 0 ]; then

    while read ciudad mes ano consumo; do

        if [ $ciudad = $ciudad_p ]; then
                media=$((media+consumo))
        fi

    done < consumos.txt

    total=$((media/num))
    echo "El consumo medio de $ciudad_p es de $total"

else
    echo "La ciudad introducida no existe :("
fi
