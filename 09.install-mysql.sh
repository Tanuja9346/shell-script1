#!/bin/bash

#our program goal is to install mysql
USERID=$(id -u)

if[ $USERID -ne 0 ]
then
    echo "Error: please run this script with root access"
# else
    # echo "info: you are root user"
fi

  yum install mysql -y