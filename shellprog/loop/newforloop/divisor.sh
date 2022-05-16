#!/bin/bash
read -p "n: " N 
read -p "divisor: " DIV 
CO=0
for ((I=1; I <= $N; I++))
do 
    REM=$[I%DIV]
    if [ $REM -eq 0 ]
    then
        echo $I 
        CO=$[CO+1]
    fi
done
echo $CO numbers are divisible by $DIV