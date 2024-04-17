#!/bin/bash

echo "print all parameters passed : $@"

echo "count how many parameters passed : $#"

echo "script name is : $0"

echo "exit status of previous command : $?"

echo "current working directory : $PWD"

echo "Home directory of current user : $HOME"

echo "which user running the script : $USER"

echo "Hostname/IPaddress of the server : $HOSTNAME"

echo "Process ID of current shell script : $$"

sleep 10 

date

echo "Process ID of last background command : $!"
 sleep 10&