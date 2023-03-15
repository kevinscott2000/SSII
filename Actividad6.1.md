
EJERCICIO 1
```bash
#!/bin/bash

echo "Introduce un número entero: "
read num

if [ $num -gt 0 ]
then
    echo "$num es positivo"
fi 
```

EJERCICIO 2
```bash
#!/bin/bash

echo "Introduce un número entero: "
read num

if [ $num -lt 0 ]
then
    echo "$num es negativo"
fi
```

EJERCICIO 3
```bash
#!/bin/bash

echo "Introduce un número entero: "
read num

if [ $num -eq 0 ]
then
    echo "$num es igual a cero"
fi
```

EJERCICIO 4
```bash
#!/bin/bash

echo "Introduce un número entero: "
read num

if [ $num -gt 0 ]
then
    echo "$num es positivo"
elif [ $num -lt 0 ]
then
    echo "$num es negativo"
else
    echo "$num es igual a cero"
fi
```

EJERCICIO 5
```bash
#!/bin/bash

if [ $# -ne 3 ]
then
    echo "El número de parámetros introducido no es correcto."
else
    echo "Los parámetros introducidos son correctos."
fi
```

EJERCICIO 6
```bash
#!/bin/bash

if [ $# -ne 2 ]
then
    echo "El número de parámetros introducido no es correcto."
else
    num1=$1
    num2=$2
    sum=$((num1 + num2))
    echo "La suma de $num1 y $num2 es $sum."
fi
```

EJERCICIO 7
```bash
#!/bin/bash

if [ "$#" -ne 3 ]
then
    echo "Error: debe introducir 3 parámetros"
    exit 1
fi

re='^[0-9]+$'
if ! [[ $1 =~ $re ]] || ! [[ $2 =~ $re ]]
then
    echo "Error: los dos primeros parámetros debe ser números enteros"
    exit 1
fi

if [ "$3" = "+" ]
then
    resultado=$(($1 + $2))
elif [ "$3" = "-" ]
then
    resultado=$(($1 - $2))
elif [ "$3" = "x" ]
then
    resultado=$(($1 * $2))
elif [ "$3" = "/" ]
then
    resultado=$(($1 / $2))
else
    echo "Error: el tercer parámetro debe ser uno de los siguientes símbolos: +, -, x, /"
    exit 1
fi

echo "El resultado de la operación es: $resultado"
```

EJERCICIO 8
```bash
#!/bin/bash

echo "Introduce la ruta del archivo: "
read ruta

if [ -e "$ruta" ]
then
    echo "El archivo existe"
else
    echo "El archivo no existe"
fi
```

EJERCICIO 9
```bash
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
```

EJERCICIO 10
```bash
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
```

EJERCICIO 11
```bash
#!/bin/bash

for i in {1..50}
do
    echo "hola"
done
```

EJERCICIO 12
```bash
#!/bin/bash

for i in {1..10}
do
    echo "Introduce una palabra:"
    read palabra
    echo "La palabra introducida es: $palabra"
done
```

EJERCICIO 13
```bash
#!/bin/bash

echo "Introduce un número:"
read num

for i in $(seq 1 $num); do
    echo "hola"
done
```

EJERCICIO 14
```bash
#!/bin/bash

echo "Introduce un número:"
read num

for i in $(seq 0 $num); do
    echo $i
done
```

EJERCICIO 15
```bash
#!/bin/bash

echo "Introduce un número:"
read num

sum=0

for i in $(seq 1 $num); do
    sum=$((sum+i))
done

echo "La suma de los números del 1 al $num es: $sum"
```

EJERCICIO 16
```bash
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
```

EJERCICIO 17
```bash
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
```

EJERCICIO 18
```bash
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
```

EJERCICIO 19
```bash
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
```

EJERCICIO 20
```bash
#!/bin/bash

echo "Ingrese un número:"
read num

while read linea
do
    if [ $linea -eq $num ]
    then
        echo "El número $num se encuentra en el archivo."
        exit
    fi
done < numeros.txt

echo "El número $num no se encuentra en el archivo."
```

