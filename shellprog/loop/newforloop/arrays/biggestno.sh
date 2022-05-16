#!/bin/bash
read -p "n: " -a ARR 
BIG=${ARR[0]}
for I in ${ARR[@]}
do 
    if [ $I -gt $BIG ]
    then
        BIG=$I
    fi 
done
echo $BIG