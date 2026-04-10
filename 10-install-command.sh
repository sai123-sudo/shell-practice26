#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: this not root uuser"
    exit 1
else
    echo "You are running with root access"
fi

dnf list install nginx -y

if [ $? -eq 0 ]
then 
    echo "MySql is not installed... going to install it"
    dnf install nginx -y
    if [ $? -eq 0 ]
    then 
        echo "Installing Mysql is ... SUCESS"
    else 
   echo "Installing MySql is ... FAILURE"
   #exit 1
    fi
else 
   echo "MySql is already installed... Nothing to do"
   exit 1
fi

# dnf install nginx -y
#     if [ $? -eq 0 ]
# then 
#     echo "Installing Mysql is ... SUCESS"
# else 
#    echo "Installing MySql is ... FAILURE"
#    #exit 1
# fi