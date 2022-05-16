#!/bin/bash
read -p "n: " N 
C=1
REM=0
A=0
while [ $C -le $N ]
do
    REM=$[C%2]
    if [ $REM -eq 0 ]
    then
        A=$[A+1]
        echo $C
    
    fi
    C=$[C+1] 
    
done
echo no of even no is $A