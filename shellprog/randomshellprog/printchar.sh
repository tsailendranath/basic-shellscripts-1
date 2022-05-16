#!/bin/bash
PASSPORTNO=$1
#LEN=$(echo -n $PASSPORTNO | wc -c) # -n is for supressing new line so that it will not return +1 value.
#echo $LEN
#or 
LEN=`expr length $PASSPORTNO`
echo your passport is $LEN char. long.