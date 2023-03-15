#!/bin/bash

archivo="palabras.txt"

while true; do

    read palabra
    if [[ $palabra == ":q" ]]; then
        break
    fi

    echo $palabra >> $archivo
    sort $archivo -o $archivo
done
echo "Las palabras han sido guardadas en el archivo $archivo"

