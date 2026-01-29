#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR: You must run this script as root"
    exit 1
fi

# -------- MYSQL --------
dnf list installed mysql 

if [ $? -ne 0 ]
then
    echo "MySQL not found. Installing..."
    dnf install mysql -y

    if [ $? -ne 0 ]
    then
        echo "MySQL installation FAILED"
        exit 1
    else
        echo "MySQL installation SUCCESS"
    fi
else
    echo "MySQL is already installed"
fi

# -------- GIT --------
dnf list installed git 

if [ $? -ne 0 ]
then
    echo "Git not found. Installing..."
    dnf install git -y

    if [ $? -ne 0 ]
    then
        echo "Git installation FAILED"
        exit 1
    else
        echo "Git installation SUCCESS"
    fi
else
    echo "Git is already installed"
fi
