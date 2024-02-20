#!/bin/bash
media_v=0
media_b=0
media_m=0    
while read ciudad mes ano consumo; do

    if [ $ciudad = "Valencia" ]; then
            media_v=$((media_v+consumo))
    elif [ $ciudad = "Barcelona" ]; then
            media_b=$((media_b+consumo))
    elif [ $ciudad = "Madrid" ]; then
            media_m=$((media_m+consumo))
    fi
done < consumos.txt
media_v=$((media_v/7))
media_b=$((media_b/7))
media_c=$((media_c/7)) 

if [ $media_v -lt $media_b ];then
    if [ $media_v -lt $media_m ];then
        echo "Valencia es la ciudad con menor consumo"
    fi
elif [ $media_b -lt $media_v ];then
    if [ $media_b -lt $media_m ];then
        echo "Barcelona es la ciudad con menor consumo"
    fi
elif [ $media_m -lt $media_v ];then
    if [ $media_m -lt $media_b ];then
        echo "Madrid es la ciudad con menor consumo"
    fi
fi