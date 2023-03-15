#!/bin/bash

echo "Introduce un número:"
read num

for i in $(seq 0 $num); do
    echo $i
done
