#!/bin/bash
read -p "n: " -a N 
SUM=0
C=1

for I in ${N[@]}
do
   B=${N[C]} 
   SUM=$[SUM+B]
   C=$[C+2]
done
echo "the sum of odd positioned values in the array is : $SUM"