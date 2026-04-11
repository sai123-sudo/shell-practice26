#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: this not root uuser"
    exit 1
else
    echo "You are running with root access"
fi

VALIDATE(){
    if [ $1 -eq 0 ]
    then 
        echo "Installing $2 is ... SUCESS"
    else 
        echo "Installing $2 is ... FAILURE"
        exit 1
    fi
}

dnf list install mysql
if [ $? -ne 0 ]
then 
    echo "mysql is not installed... going to install it"
    dnf install mysql -y
    VALIDATE $? "mysql"
else 
   echo "MySql is already installed... Nothing to do"
fi

dnf list install python3
if [ $? -ne 0 ]
then 
    echo "python is not installed... going to install it"
    dnf install python -y
    VALIDATE $? "python3"
else 
   echo "python3 is already installed... Nothing to do"
fi

dnf list install nginx
if [ $? -ne 0 ]
then 
    echo "nginx is not installed... going to install it"
    dnf install nginx -y
    VALIDATE $? "nginx"
else 
   echo "nginx is already installed... Nothing to do"
fi

dnf list install mongodb-org
if [ $? -ne 0 ]
then 
    echo "mongod is not installed... going to install it"
    dnf install mongodb-org -y
    VALIDATE $? "mongodb-org"
else 
   echo "mongod is already installed... Nothing to do"
fi