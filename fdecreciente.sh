#!/bin/bash

cat consumos.txt | grep "Valencia" > valencia.txt
cat consumos.txt | grep "Barcelona" > barcelona.txt
cat consumos.txt | grep "Madrid" > madrid.txt
cont1=0
cont2=0
cont3=0
cons1=100000000
cons2=100000000
cons3=100000000


while read ciudad mes ano consumo; do
        if [ $cons1 -gt $consumo ]; then
                cons1=$consumo
        else
            cont1=$((cont1+1))
        fi
        
done < valencia.txt

if [ $cont > 0 ];then
    echo "Valencia no ha tenido un consumo decreciente."
else
    echo "Valencia ha tenido un consumo decreciente."
fi

while read ciudad mes ano consumo; do
        if [ $cons2 -gt $consumo ]; then
                cons2=$consumo
        else
            cont2=$((cont2+1))
        fi
        
done < barcelona.txt

if [ $cont > 0 ];then
    echo "Barcelona no ha tenido un consumo decreciente."
else
    echo "Barcelona ha tenido un consumo decreciente."
fi

while read ciudad mes ano consumo; do
        if [ $cons3 -gt $consumo ]; then
                cons3=$consumo
        else
            cont3++
        fi
        
done < madrid.txt

if [ $cont > 0 ];then
    echo "Madrid no ha tenido un consumo decreciente."
else
    echo "Madrid ha tenido un consumo decreciente."
fi

rm valencia.txt
rm barcelona.txt
rm madrid.txt