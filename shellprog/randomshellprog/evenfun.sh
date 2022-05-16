NUMTYPE=""
oddoreven() {
    local N=$#
    if [ $N -ne 1 ]
    then
        return 1
    fi
    local A=$1
    local REM=$[A%2]
    if [ $REM -eq 0 ]
    then 
        NUMTYPE="even"
    else
        NUMTYPE="odd"
    fi
    return 0
}
read -p "n: " N 
oddoreven $N 
STAT=$?
if [ $STAT -eq 0 ]
then
    echo "type is $NUMTYPE"
else 
    echo "error arguments are missing."
fi
