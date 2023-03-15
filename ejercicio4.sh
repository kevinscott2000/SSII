#!/bin/bash

echo "Introduce un número entero: "
read num

if [ $num -gt 0 ]
then
    echo "$num es positivo"
elif [ $num -lt 0 ]
then
    echo "$num es negativo"
else
    echo "$num es igual a cero"
fi

