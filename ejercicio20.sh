#!/bin/bash

echo "Ingrese un número:"
read num

while read linea
do
    if [ $linea -eq $num ]
    then
        echo "El número $num se encuentra en el archivo."
        exit
    fi
done < numeros.txt

echo "El número $num no se encuentra en el archivo."
