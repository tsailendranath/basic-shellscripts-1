#!/bin/bash
read -p "n: " N 
M=1
while [ $M -le 10 ]
do
    printf "%2d x %2d = %2d\n" $N $M $[N*M]
    M=$[M+1]
done