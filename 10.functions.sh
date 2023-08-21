#!/bin/bash

#our program goal is to install mysql
USERID=$(id -u)
#this function should validate the previous command and inform the user it is sucess or failure.
validate(){
    # $1 is the receive the argument
    if [ $1 -ne 0 ]
  then
      echo "$2.... is error"
      exit 1
  else
      echo "$2.... is sucess"
   fi
}

if [ $USERID -ne 0 ]
then
    echo "Error: please run this script with root access"
    exit 1
# else
    # echo "info: you are root user"
fi

  yum install mysql -y

  validate $? "installing mysql"

  yum install postfix -y

  validate $?  "installing postfix"              #validate is function and $? input that is exit

  
