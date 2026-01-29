#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
 then 
    echo "U MUST HAVE ROOT USER FOR EXECUTING THIS SCRIPT"
    exit 1
fi
 
 dnf list installed mysql

  if [ $? -en 0 ]
  then 
    dnf install mysql -y
 
if [ $? -ne 0 ]
 then
      echo "mysql installing...FAILURE"
      exit 1
   else
      echo "mysql insatlling...SUCCESS"
 else 
      echo "MYSQL is already installed"    

fi
   

   dnf list installed git 

   if [ $? -ne 0]
   then 
      dnf install git -y
      if [ $? -ne 0 ]
     then 
    echo "git insattling...failure"
    exit 1
else 
    echo "git insatlling...success"

fi
else
     echo "GIT is already.. installed"

    fi

    if [ $? -ne 0 ]
    then 
    echo "installing git... failure"

    exit 1

    else 
    echo "installing git... success"

    fi