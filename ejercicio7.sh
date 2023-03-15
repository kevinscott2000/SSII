#!/bin/bash

if [ "$#" -ne 3 ]
then
    echo "Error: debe introducir 3 parámetros"
    exit 1
fi

re='^[0-9]+$'
if ! [[ $1 =~ $re ]] || ! [[ $2 =~ $re ]]
then
    echo "Error: los dos primeros parámetros debe ser números enteros"
    exit 1
fi

if [ "$3" = "+" ]
then
    resultado=$(($1 + $2))
elif [ "$3" = "-" ]
then
    resultado=$(($1 - $2))
elif [ "$3" = "x" ]
then
    resultado=$(($1 * $2))
elif [ "$3" = "/" ]
then
    resultado=$(($1 / $2))
else
    echo "Error: el tercer parámetro debe ser uno de los siguientes símbolos: +, -, x, /"
    exit 1
fi

echo "El resultado de la operación es: $resultado"