#!/bin/bash
A=12
B=34
C=$[A+B]
printf "A : %4d\n" $A
printf "B : %4d\n" $B 
printf "Sum:%4d\n" $C

echo -e " hello !\n what are you doing?"
# -e makes the echo support escape characters