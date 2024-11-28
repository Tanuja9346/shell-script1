#!/bin/bash

APP_LOG_DIR=/home/centos/app-logs
LOGSDIR=/home/centos/shell-script.logs
#/home/centos/shell-script.logs/scriptname/date.log
SCRIPTNAME=$0
LOGFILE=$LOGSDIR/$0-$DATE.log

FILES_TO_DELETE=$(find $APP_LOG_DIR -name "*.log" -type f -mtime +14)  #search where .log files in directory

echo "$FILES_TO_DELETE"

while read line   # deleting one by one line taking input from files to dlete varaiable
do
  echo "deleting $line" &>>$LOGFILE
  rm -rf $line
 done <<< $FILES_TO_DELETE