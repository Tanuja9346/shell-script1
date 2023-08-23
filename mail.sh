#!/bin/bash

# anyone can call this script in your team with arguments
#mail.sh to_adress subject body team name alert type

TO_ADDRESS=$1
SUBJECT=$2
BODY=$3
TEAM_NAME=$4
ALERT_TYPE=$5

echo "all arguments: $@"