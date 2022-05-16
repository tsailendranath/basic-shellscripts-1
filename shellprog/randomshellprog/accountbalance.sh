#!/bin/bash
FACNO=$1
ACNO=`expr substr $FACNO 6 4`
BANKCODE=`expr substr $FACNO 1 5`
printf "your bankcode is %12s\n" $BANKCODE
printf "your ac no is %14s\n" $ACNO
