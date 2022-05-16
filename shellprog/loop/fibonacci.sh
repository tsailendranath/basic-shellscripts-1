#!/bin/bash
read -p "n: " N # NO upto which you need the fibonacci no.
P=0
C=1
NE=1
NO=2
printf "%d\t" $P $C 
# or printf "$P\t$C\n"
while [ $NE -le $N ]
do
    printf "%d\t" $NE
    P=$C
    C=$NE
    NO=$[NO+1]
    NE=$[P+C]
done
echo ""
echo the no of fibonacci numbers are $NO
echo ""
