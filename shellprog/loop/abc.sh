#!/bin/bash
A=$1
if [ $# -eq 0 ]
then
    A=.
fi

if [ $# -gt 1 ] 
then   
    echo "error, too many arguments."
    exit 1
elif [ ! -d $A ]
then
    echo "error, not a directory"
    exit 2
else
    if [ -d $A ]
    then 
        ls $a
    fi
fi