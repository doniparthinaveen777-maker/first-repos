#!/bin/bash

userid=$(id -u)

if [$userid -ne 0]
then
  echo "error:: u must be in the root user."
fi

dnf install mysql -y
 