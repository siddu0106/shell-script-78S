#!/bin/bash

NO=$1

if [ $NO -gt 10 ]
then
    echo "number $NO is greater than 10"
else
    echo "number $NO is less than 10"
fi

# -gt , -lt, -eq, -ge, -le

