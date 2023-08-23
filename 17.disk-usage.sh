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
message=

## ifs means internal field seprator is space.
while IFS= read line
do
# this command will give u usage in number format for comparision
    USAGE=$(echo $line | awk '{print $6}' | cut -d % -f1)
    ## this command will give us partition 
    PARTITION=$(echo $line | awk '{print $1}')
    #now u need to check it is more than thershold or not.
    
    if [ $USAGE -gt $DISK_USAGE_THRESHOLD ]
    then
      message+="HIGH_DISK_USAGE on $PARTITION: $USAGE \n"
   fi


done <<< $DISK_USAGE

echo -e "message: $message"

#echo "$MESSAGE" | mail -s "HIGH_DISK_USAGE" tanujach9346@gmail.com
#How to call other shellscript from your current script.  
sh mail.sh tanujach9346@gmail.com "HIGH_DISK_USAGE" "$MESSAGE" "DEVOPS_TEAM" "HIGH_DISK_USAGE"

