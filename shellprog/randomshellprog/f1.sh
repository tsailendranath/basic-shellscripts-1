#!/bin/bash
SUM=0 #taking global variable for capturing the output of the function.
add() {
    N=$#
    if [ $N -ne 2 ]
    then
        return 1
    fi
    A=$1 
    B=$2
    SUM=$[A+B]
    return 0
}
if [ $# -eq 2 ]
then
    add $@ #for passing the data from the command line.
    STATUS=$?
    echo "status: $STATUS"
    if [ $STATUS -ne 0 ]
    then
        echo "error"
        exit 1
    else
        echo "sum is $SUM"
    fi
else
    echo "missing argument"
    exit 1
fi