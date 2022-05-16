#!/bin/bash
#N=(1 2 3 1 5 1 9 1) 
#echo ${N[@]:2:4}
#M=${N[@]/1/45}
#echo ${M[@]}
read -p "enter array: " N 
BIG=0
SBIG=0
for I in ${N[@]}
do
    if [ $I -gt $BIG ]
    then
        SBIG=$BIG
        BIG=$I
    fi
done
echo $SBIG
echo $BIG