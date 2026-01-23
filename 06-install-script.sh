#!/bin/bash

userid=$(id -u)

if [ $userid -ne 0 ]
then
  echo "error:: u must be in the root user."
  exit 1
fi
  
  dnf install mysql -y

  if [$? -ne 0 ]
then 
    echo "mysql installing is failure."

else
    echo "mysql installing is success."
     
fi 

 