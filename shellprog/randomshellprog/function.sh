#!/bin/bash
add() {
    A=$#
    if [ $# != 2 ]
    then
        echo "error,arguments are missing."
    fi
    B=$1
    D=$2
    sum=$[B+D]
    echo $sum
}
#main block
F="y"
until [ $F == "n" ]
do
    read -p "enter a number: " B 
    read -p "enter another number: " D 
    add $B $D 
    read -p "do you wanna continue(y/n): " F
done