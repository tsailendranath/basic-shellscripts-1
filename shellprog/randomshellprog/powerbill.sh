#!/bin/bash
read -p "your connection type[domestic or business] enter [d or b]: " CNT 
read -p "units consumed: " UNITS 
BILL=0
if [ $CNT == d ]
then
    if [ $UNITS -le 100 ]
    then
        BILL=$(echo "$UNITS*2.20" | bc)
    elif [ $UNITS -gt 100 -a $UNITS -le 300 ]
    then
        BILL=$(echo "(100*2.20)+(($UNITS-100)*3.30)" | bc)
    else
        BILL=$(echo "(100*2.20)+(200*3.30)+(($UNITS-300)*4.5)" | bc)
    fi

else
    if [ $CNT == b ]
    then
        if [ $UNITS -le 200 ]
        then
            BILL=$(echo "$UNITS*6" | bc)
        elif [ $UNITS -gt 200 -a $UNITS -le 500 ]
        then
            BILL=$(echo "(200*6)+(($UNITS-200)*10)" | bc)
        else
            BILL=$(echo "(200*6)+(300*10)+(($UNITS-500)*15)" | bc)
        fi
    fi
fi
echo Your Powerbill is $BILL
#else


#fi