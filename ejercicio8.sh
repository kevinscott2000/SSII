#!/bin/bash

echo "Introduce la ruta del archivo: "
read ruta

if [ -e "$ruta" ]
then
    echo "El archivo existe"
else
    echo "El archivo no existe"
fi
