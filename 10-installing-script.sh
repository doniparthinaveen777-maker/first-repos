#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR: MUST HAVE ROOT ACCESS "
exit 1
fi

