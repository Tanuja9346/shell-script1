#!/bin/bash

# anyone can call this script in your team with arguments
#mail.sh to_adress subject body team name alert type

TO_ADDRESS=$1
SUBJECT=$2
BODY=$(sed -e 's/[]\/$*.^[]/\\&/g' <<< $3)
echo "escaped content: $BODY"
TEAM_NAME=$4
ALERT_TYPE=$5

echo "all arguments: $@"

FINAL_BODY=$(sed -e "s/Team_name/$TEAM_NAME/g" -e "s/ALERT_TYPE/$ALERT_TYPE/g" -e "s/MESSAGE/$BODY/g" template.html)

echo "$FINAL_BODY" | mail -s  "$(echo -e "$SUBJECT\ncontent-type: text/html")" "$TO_ADDRESS"
