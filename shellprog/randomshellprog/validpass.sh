#!/bin/bash
read -p "enter passport no: " PASS 
A=`expr length $PASS`
if [ $A -eq 8 ] 
then 
    echo "your passport $PASS is valid"
else
    echo "invalid passport"
fi

echo "bye!!"