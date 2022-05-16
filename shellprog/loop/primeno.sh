#!/bin/bash
read -p "n: " N 
C=2
while [ $C -lt $N ]
do
    REM=$[N%C]
    if [ $REM -eq 0 ]
    then
        echo "its not a prime number"
        exit 1
    fi 
    C=$[C+1]
done
echo its a prime no.