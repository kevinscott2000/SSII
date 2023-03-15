#!/bin/bash

echo "Introduce un número:"
read num

sum=0

for i in $(seq 1 $num); do
    sum=$((sum+i))
done

echo "La suma de los números del 1 al $num es: $sum"
