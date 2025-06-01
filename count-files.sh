#!/bin/bash

# Check if any argument was passed

if [ -z "$1" ]; then
	echo "To use script: $0 /absolute/path/to/directory"
	exit 1
fi


# Store the argument (absolute path) passed

dirName="$1"

# Check if entered argument is a valid directory

if [ ! -d "$dirName" ]; then
	echo "Error: '$dirName' is not a valid directory."
	exit 1
fi

# Count how many files are in that directory

numOfFiles=$(find "$dirName" -type f | wc -l)

echo "There are $numOfFiles of file(s) in '$dirName'."




