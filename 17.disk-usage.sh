#!/bin/bash

#colours
#validations
#log redirections

LOG_DIRECTORY=/tmp
SCRIPTNAME=$0
DATE=$(date +%F:%H:%M:%S)
LOGFILE=$LOG_DIRECTORY/$SCRIPTNAME-$DATE.log

R="\e[31m"
N="\e[0m"
Y="\e[33m"
G="\e[32m"

DISK_USAGE=$(df -hT | grep -vE 'tmpfs|filesytem')
DISK_USAGE_THRESHOLD=1

## ifs means internal field seprator is space.
while IFS= read line
do
   echo "output: $line"

done <<< $DISK_USAGE