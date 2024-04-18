#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]
then 
    echo "Be a root user to install any package..."
    exit 1 # manually stop without continue
else 
    echo "Root user"
fi

VALIDATE()
{
    if [ $1 -ne 0 ]
    then    
        echo "$2 is failed..."
        exit 1
    else 
        echo "$2 is Success..."
    fi
}

dnf install mysql -y

VALIDATE $? "Mysql Installation"

dnf install git -y

VALIDATE $? "Git Installation"
