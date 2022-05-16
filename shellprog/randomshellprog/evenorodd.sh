#!/bin/bash
read -p "enter a number: " N 
REM=$[N%2]
if [ $REM -eq 0 ]
then
    echo even
else
    echo odd
fi