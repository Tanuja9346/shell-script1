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
# it is our responsibility  to check it is installed or not
  yum install mysql -y
  if [ $? -ne 0 ]
  then
      echo "installation of mysql is error"
      exit 1
  else
      echo "installation of mysql is not error"
   fi

   yum install postfix -y
   if [ $? -ne 0 ]
   then
       echo "installation of postfix is error"
   else 
       echo "installation if postfix is not error"
    fi

