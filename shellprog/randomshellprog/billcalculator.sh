#!/bin/bash
GSTAMOUNT=0
NETAMOUNT=0

gsttax() {
    local N=$#
    if [ $N -ne 2 ]
    then
        return 100
    fi
    local L_CATEGORY=$1
    local L_PRICE=$2
    if [ $L_CATEGORY == "education" ]; then
    
        GSTAMOUNT=$[(L_PRICE*8)/100]
    elif [ $L_CATEGORY == "transport" ]; then
    
        GSTAMOUNT=$[(L_PRICE*18)/100]
    elif [ $L_CATEGORY == "food" ]; then
    
        GSTAMOUNT=$[(L_PRICE*5)/100]
    else
        return 101
    fi
    return 0
}
NETPRICE() {
    local N=$#
    if [ $N -ne 3 ]
    then
        return 200
    fi
    local L_TRANSPORT_TYPE=$1
    local L_PRICE=$2
    local L_GSTAMOUNT=$3
    local L_TRANSPORT_AMT=0
    if [ $L_TRANSPORT_TYPE == "local" ]
    then
        L_TRANSPORT_AMT=$[(L_PRICE*8)/100]
    elif [ $L_TRANSPORT_TYPE == "national" ]
    then
        L_TRANSPORT_AMT=$[(L_PRICE*12)/100]
    else
        return 201
    fi
    NETAMOUNT=$[L_PRICE+L_GSTAMOUNT+L_TRANSPORT_AMT]
    return 0
}
#main block
CATEGORY=$1
PRICE=$2
TRANSPORT_TYPE=$3
gsttax $CATEGORY $PRICE 
GST_STATUS=$?
if [ $GST_STATUS -eq 0 ]
then
    NETPRICE $TRANSPORT_TYPE $PRICE $GSTAMOUNT 
    NETPRICE_STATUS=$?
    if [ $NETPRICE_STATUS -eq 0 ]
    then 
        echo " netprice is $NETAMOUNT"
    elif [ $NETPRICE_STATUS -eq 200 ]
    then
        echo "Invalid transport type"
        exit 4
    elif [ $NETPRICE_STATUS -eq 201 ]
    then 
        echo "invalid TRANSPORT_TYPE"
        exit 5
    fi
elif [ $GST_STATUS -eq 100 ]
then 
    echo "arguments are missing."
    exit 1
elif [ GST_STATUS -eq 101 ]
then 
    echo "invalid CATEGORY."
    exit 2
fi
