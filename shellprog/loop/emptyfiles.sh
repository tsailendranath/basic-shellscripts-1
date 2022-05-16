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
    for F in $A/*
    do
        if [ -f $F -a ! -s $F ]
        then
        echo $F
        fi
    done
fi