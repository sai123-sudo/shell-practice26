#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: this not root uuser"
else
    echo "You are running with root access"
fi