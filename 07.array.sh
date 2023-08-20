#!/bin/bash

# this is called array, instead of single value it can holds the multiple values.
PERSONS=("Ramesh" "Suresh" "Raja")

#inside array we always refer values with index and it starts from zero

echo "First person: ${PERSONS[0]}"
echo "Second person: ${PERSONS[1]}"
echo "Third person: ${PERSONS[2]}"

#print all persons

echo "All persons: ${PERSONS[@]}"

