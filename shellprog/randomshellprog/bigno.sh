#!/bin/bash
read -p "enter a number: " A 
read -p "enter another number: " B 
if [ $A -gt $B ] 
then
    echo $A is big.
elif [ $B -gt $A ] 
then   
    echo $B is big.
else [ $A -eq $B ]
    echo $A and $B are same.
fi

echo bye!!    