#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: this not root uuser"
    exit 1
else
    echo "You are running with root access"
fi

dnf list install mysql
if [ $? -ne 0 ]
then 
    echo "mysql is not installed... going to install it"
    dnf install mysql -y
    if [ $? -eq 0 ]
    then 
        echo "Installing mysql is ... SUCESS"
    else 
        echo "Installing mysql is ... FAILURE"
        exit 1
    fi
else 
   echo "mysql is already installed... Nothing to do"
fi

dnf list install python3
if [ $? -ne 0 ]
then 
    echo "python is not installed... going to install it"
    dnf install python -y
    if [ $? -eq 0 ]
    then 
        echo "Installing python is ... SUCESS"
    else 
        echo "Installing python is ... FAILURE"
        exit 1
    fi
else 
   echo "python3 is already installed... Nothing to do"
fi

dnf list install nginx
if [ $? -ne 0 ]
then 
    echo "nginx is not installed... going to install it"
    dnf install nginx -y
    if [ $? -eq 0 ]
    then 
        echo "Installing nginx is ... SUCESS"
    else 
        echo "Installing nginx is ... FAILURE"
        exit 1
    fi
else 
   echo "nginx is already installed... Nothing to do"
fi