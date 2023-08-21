#!/bin/bash

#our program goal is to install mysql
USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Error: please run this script with root access"
    exit 1
# else
    # echo "info: you are root user"
fi

  yum install mysql -y
  if [ $? -ne 0 ]
  then
      echo "instalation of mysql is error"
      exit 1
  else
      echo "instalation of mysql is error"
   fi
