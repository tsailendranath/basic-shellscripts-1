#!/bin/bash
read -p "enter model name: " M 
XP=0
ONRP=0
INS=0
case $M in 
"activa")
XP=100000
;;
"shine")
XP=120000
;;
"dio")
XP=150000
;;
"unicorn")
XP=200000
;;
*)
echo "invalid input"
exit 1
esac

INS=$[(XP*9)/100]
ONRP=$[XP+((XP*23)/100)+INS]
printf "X-showroom price : %6d\n" $XP 
printf "insurence :        %6d\n" $INS 
printf "onroad price :     %6d\n" $ONRP