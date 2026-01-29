#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "U MUST HAVE ROOT USER FOR EXECUTING THIS SCRIPT"
    exit 1
fi
 
 dnf install mysqll -y
 
 if [ $? -ne 0 ]
 then
     echo "mysql installing...FAILURE"
     exit 1
else
     echo "mysql insatlling...SUCCESS"

fi