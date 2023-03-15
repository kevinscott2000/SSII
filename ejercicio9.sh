#!/bin/bash

if [ -d "$1" ]
then
    echo "La ruta $1 corresponde a un directorio."
elif [ -f "$1" ]
then   
    echo "La ruta $1 corresponde a un fichero."
else
    echo "La ruta $1 no corresponde a un fichero ni a un directorio existente."
fi    
