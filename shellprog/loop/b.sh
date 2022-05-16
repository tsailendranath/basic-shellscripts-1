#!/bin/bash
read -p "n: " N
C=1
while [ $C -le $N ]
do
    echo "hello world"
    C=$[C+1]
done