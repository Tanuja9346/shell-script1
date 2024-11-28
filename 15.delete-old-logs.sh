#!/bin/bash

APP_LOG_DIR=/home/centos/app-logs


FILES_TO_DELETE=$(find $APP_LOG_DIR -name "*.log" -type f -mtime +14)

echo "$FILES_TO_DELETE"


#-nmae is seraching log and type file and required time. 