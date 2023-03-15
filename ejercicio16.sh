#!/bin/bash

if [ $# -ne 2 ]; then
    echo "El numero de parámetros es incorrecto. El programa necesita recibir exactamente dos números."
    exit 1
fi

echo "Los números ingresados son: \$1 = $1 y \$2 = $2"

temp=$1
$1=$2
$2=$temp

echo "Después del intercambio, \$1 = $1 y \$2 = $2"