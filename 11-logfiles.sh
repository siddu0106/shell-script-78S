#!/bin/bash

DATE=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f 1) # removing .sh in file name
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[30m"
N="\e[0m"

USER=$(id -u)

if [ $USER -ne 0 ]
then 
    echo " $R Be a root user to install any package... $N"
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