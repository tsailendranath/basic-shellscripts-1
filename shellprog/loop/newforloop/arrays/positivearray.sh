#!/bin/bash
read -p "enter the array: " -a N 
declare -a M
C=0
for I in ${N[@]}
do
    if [ $I -ge 0 ]
    then
        M[C]=$I
        C=$[C+1]
    fi
done
echo ${M[@]}