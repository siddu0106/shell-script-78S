#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]
then 
    echo "Be a root user to install any package..."
    exit 1 # manually stop without continue
else 
    echo "Root user"
fi

dnf install mysqll -y

if [ $? -ne 0 ]
then    
    echo "Mysql Installation is failed..."
    exit 1
else 
    echo "Mysql Installation is Success..."
fi

dnf install git -y

if [ $? -ne 0 ]
then    
    echo "Git Installation is failed..."
    exit 1
else 
    echo "Git Installation is Success..."
fi
