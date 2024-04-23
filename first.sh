 #!/bin/bash
 
 echo "hey siddu I am learning devops"


if [ -e backend.zip ]
then
    echo -e "$Y backend.zip file already exist...$N"
else
    #Actually no need to check for .zip file bcz we can run this multiple times also, it won't throw any error. But am checking simply
    curl -o /tmp/backend.zip https://expense-builds.s3.us-east-1.amazonaws.com/expense-backend-v2.zip
    VALIDATE $? "Downloading backend code to tmp folder"
fi

 
