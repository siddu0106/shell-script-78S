#!/bin/bash

DATE=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d . -f 1)
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

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

dnf install mysql -y &>> $LOGFILE

VALIDATE $? "Mysql Installation"

dnf install git -y &>> $LOGFILE

VALIDATE $? "Git Installation"