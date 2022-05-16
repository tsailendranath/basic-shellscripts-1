#!/bin/bash
read -p "n: " N 
C=$N 
until [ $C -lt 1 ]
do
    printf "$C\t"
    C=$[C-1]

done
echo ""