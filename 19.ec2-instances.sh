#!/bin/bash


NAMES=("mongodb" "redis" "mysql" "rabbitmq" "catalouge" "user" "cart" "shipping" "payment" "dispatch" "web")


for i in "{$NAMES[$@]}"
do
   echo "NAMES: $i"

done   
