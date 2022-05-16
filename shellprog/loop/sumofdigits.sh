#!/bin/bash
read -p "n : " N 
T=$N 
R=0 

while [ $T -gt 0 ]
do
    J=$[T%10]
    R=$[R+J]
    T=$[T/10]
done
echo sum of the no  is $R