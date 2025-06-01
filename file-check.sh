#!/bin/bash

# checking if a file name was provided

if [ -z  "$1" ]; then

echo  "To use script: $0 <filename>"
exit 1

fi

# Store the passed argument in a variable

fileName="$1"

# Check if the argument(file name) passed exists

if [ -f "$fileName" ]; then
echo "File  '$fileName' exists."

else
echo "This '$fileName' does not exist."

fi
