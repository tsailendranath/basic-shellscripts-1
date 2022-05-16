#!/bin/bash
read -p "enter array: " -a N 
LEN=${#N[@]}
L=$[LEN-1] 
: `
until [ $L -lt 0 ]
do
   printf "${N[L]}\t"
   L=$[L-1]
done
`
for ((I=$L; I >=0; I--))
do
    printf "${N[I]}\t"
done
echo ""
