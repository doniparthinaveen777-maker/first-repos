#!/bin/bash

NUMBER1=$1
NUMBER2=$2
TIMESTAMP=$(date)
echo "scripts execute at : $TIMESTAMP"
SUM=$(($NUMBER1+$NUMBER2))

echo "ADDING sum of $NUMBER1 AND $NUMBER2 is $SUM "
