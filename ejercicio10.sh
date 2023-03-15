#!/bin/bash

echo "Introduce la ruta del archivo: "
read ruta

if [ ! -e "$ruta" ]
then
    echo "El archivo no existe."
    exit 1
fi

permisos=$(ls -ld "$ruta"  | awk '{print $1}') 

echo "Los permisos del archivo $ruta son:$permisos"
