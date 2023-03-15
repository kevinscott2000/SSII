#!/bin/bash

echo "Ingrese palabras (ingrese \":q\" para salir):"
archivo="palabras.txt"

while true; do
    read palabra
    if [ "$palabra" = ":q" ]; then
        echo "Saliendo del programa..."
        exit 0
    fi
    echo "Palabra ingresada: $palabra"
    echo "$palabra" >> "$archivo"
done
