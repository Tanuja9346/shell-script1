#!/bin/bash

# anyone can call this script in your team with arguments
#mail.sh to_adress subject body team name alert type

TO_ADDRESS=$1
SUBJECT=$2
BODY=$3
TEAM_NAME=$4
ALERT_TYPE=$5

echo "all arguments: $@"

FINAL_BODY=$(sed -e 's/Team_name/DevOps_team/g' -e 's/ALERT_TYPE/High disk usage/g' -e "s/MESSAGE/$BODY/g" template.html

echo "$FINAL_BODY" | mail -s "$SUBJECT" "$TO_ADDRESS"
