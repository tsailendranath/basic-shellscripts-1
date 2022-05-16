#!/bin/bash

read -p "n : " N
C=2
A=0
while [ $C -le $N ]
do
    printf "%d\t" $C
    C=$[C+2]
    A=$[A+1]
done
echo ""
echo -e no of even no: $A
