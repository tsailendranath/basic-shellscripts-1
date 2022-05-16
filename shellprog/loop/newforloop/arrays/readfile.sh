#!/bin/bash
B=$1
if [ ! -f $B ]
then
    echo "Error!! file does not exist."
fi
while read line
do
    echo $line
done < $B