#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    # $1 is the receive the argument
    if [ $1 -ne 0 ]
  then
      echo -e "$2.... $R is error $N"
      exit 1
  else
      echo -e "$2.... $G is sucess $N"
   fi
}

#our program goal is to install mysql
USERID=$(id -u)
#this function should validate the previous command and inform the user it is sucess or failure.


if [ $USERID -ne 0 ]
then
    echo "Error: please run this script with root access"
    exit 1
# else
    # echo "info: you are root user"
fi

  yum install mysql -y &>>$LOGFILE

  VALIDATE $? "installing mysql"

  yum install postfix -y &>>$LOGFILE

  VALIDATE $?  "installing postfix"             #validate is function and $? input that is exit

  
