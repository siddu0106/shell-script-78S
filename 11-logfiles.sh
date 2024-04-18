#!/bin/bash

DATE=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f 1) # removing .sh in file name
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

USER=$(id -u)

if [ $USER -ne 0 ]
then 
    echo -e " $R Be a root user to install any package... $N"
    exit 1 # manually stop without continue
else 
    echo "Root user"
fi

VALIDATE()
{
    if [ $1 -ne 0 ]
    then    
        echo -e "$2 is $R failed...$N" 
        exit 1
    else 
        echo -e "$2 is $G Success...$N"
    fi
}

dnf install mysql -y &>> $LOGFILE

VALIDATE $? "Mysql Installation"

dnf install git -y &>> $LOGFILE

VALIDATE $? "Git Installation"