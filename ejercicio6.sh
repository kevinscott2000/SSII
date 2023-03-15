#!/bin/bash

if [ $# -ne 2 ]
then
    echo "El número de parámetros introducido no es correcto."
else
    num1=$1
    num2=$2
    sum=$((num1 + num2))
    echo "La suma de $num1 y $num2 es $sum."
fi
