#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "ERROR: MUST HAVE ROOT ACCESS "
exit 1
fi

#.....MYSQL CHECKING THAT ALREADY EXISTING OR NOT....

 dnf list installed mysql

if [ $! -ne 0]
then 
   echo "MYSQL is not founed."
   #..installing MYSQL if not founed here...
   dnf install mysql -y
  
if [ $! -ne 0 ]   
then
   echo "MYSQL installing...failure."
   exit 1

else
   echo "MYSQL installing...success."
fi 
else 
    echo "MYSQL is already existing."

fi

#......checking git .....

dnf list installed git

if [ $! -ne 0 ]
then 
   echo "GIT is not founded."

   dnf install git -y

if [ $! -ne 0 ]
then 
  echo "git installing.. fail."
  exit 1 

else 
  echo " git installing.. success."

fi 
else 
  echo "GIT alredy existing here."

  fi


