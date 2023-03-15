#!/bin/bash

echo "Ingrese palabras (ingreso \":q\" para salir):"

while true; do
    read palabra
    if [ "$palabra" = ":q" ]; then
        echo "Saliendo del programa..."
        exit 0
    fi
    echo "Palabra ingresada: $palabra"
done
