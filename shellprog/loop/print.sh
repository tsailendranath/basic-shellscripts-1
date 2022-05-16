#!/bin/bash
SUM=0
for I in $@
do
    SUM=$[SUM+I]
    
done
echo $SUM
echo $*
echo $#
echo $@