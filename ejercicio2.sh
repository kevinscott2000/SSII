#!/bin/bash

echo "Introduce un número entero: "
read num

if [ $num -lt 0 ]
then
    echo "$num es negativo"
fi