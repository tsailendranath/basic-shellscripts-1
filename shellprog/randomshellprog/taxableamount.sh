#!/bin/bash
read -p "gross income: " GROSSINCOME 
read -p "gender: " GENDER 
TAX=0
if [ $GENDER == "male" ]
then
    TAX=$[(GROSSINCOME*15)/100]
else
    TAX=$[(GROSSINCOME*12)/100]
fi
echo your tax is $TAX
