#!/bin/bash
DATE=$(date +%F)
USERID=$(id -u)
LOGSDIR=/home/centos/shell-script.logs
#/home/centos/shell-script.logs/scriptname/date.log
LOGFILE=$LOGSDIR/$0/$DATE.LOG
SCRIPTNAME=$0
R="\e[31m"
N="\e[0m"
Y="\e[33m"
G="\e[32m"
 if [ $USERID -ne 0 ]
 then
     echo -e "$R Error: script should run with the root access $N"
     exit 1
 fi
 VALIDATE(){ 
        if [ $1 -ne 0 ]
        then
         echo -e "INSTALLING $2..$R FAILURE $N"
         exit 1
        else
         echo  -e "INSTALLING $2..$G SUCESS $N"
        fi
 
 for i in $@
 do
      yum list installed $i &>>$LOGFILE
      if [ $? -ne 0 ]
      then
          echo "$i is not installed, please install it"
          yum install $i -y &>>$LOGFILE
          VALIDATE $? "$i"
      else 
          echo -e "$Y $i is all ready installed $N"
       fi
done