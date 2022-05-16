#!/bin/bash
read -p "n: " N 
T=$N
SUM=0
S=0
while [ $T -gt 0 ]
do
    S=$[T%10]
    SUM=$[(SUM*10)+S]
    T=$[T/10]
done
echo $SUM
if [ $SUM -eq $N ]
then
    echo its a palindrome no.
else
    echo its not a palindrome no.
fi