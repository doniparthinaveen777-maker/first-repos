#!/bin/bash



TIMESTAMP=$(date)
echo "scripts execute at : $TIMESTAMP"
echo "EDHO OKA NUMBER IVVU BRO ADD CHESTHA :"
read $NUMBER1
echo "INKO NUMBER CHEPPU BRO ADD CHESTHA :"
read $NUMBER2
read SUM=$(($NUMBER1+$NUMBER2))

echo "ADDING sum of $NUMBER1 AND $NUMBER2 is $SUM "
