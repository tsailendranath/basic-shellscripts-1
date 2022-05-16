#!/bin/bash
STR1=$1
STR2=$2
MATCHCOUNT=`expr "$STR1 1" : "$STR2"`
echo $MATCHCOUNT