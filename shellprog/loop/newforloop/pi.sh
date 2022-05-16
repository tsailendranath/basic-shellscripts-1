#!/bin/bash
F="y"
I=1
until [ $F == "n" ]
do
    echo $I 
    I=$[I+1]
    read -p "do u wanna continue (y/n) :" F 
done
echo "bye !!"