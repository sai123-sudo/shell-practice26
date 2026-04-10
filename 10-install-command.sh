#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: this not root uuser"
    exit 1
else
    echo "You are running with root access"
fi

dnf list install mysql -y

if [ $? -eq 0 ]
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

# dnf install mysql -y
#     if [ $? -eq 0 ]
# then 
#     echo "Installing Mysql is ... SUCESS"
# else 
#    echo "Installing MySql is ... FAILURE"
#    #exit 1
# fi