#!/bin/bash

echo "Introduce un número entero: "
read num

if [ $num -gt 0 ]
then
    echo "$num es positivo"
fi