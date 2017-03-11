#!/bin/bash

#Declare variables
git_exclude="./.git/info/exclude"

#Declare functions
check_exclude() {
	if [ -e $git_exclude ]; then
		echo "File ${git_exclude} found"
	else
		echo "File ${git_exclude} not found"
		exit 1
	fi
}

read_input() {
	echo "Please enter file(s) to be excluded"
	read files
	for file in $files; do
		echo ">${file} excluded"
		echo $file >> $git_exclude
	done
	exit 0
}

echo "This script appends to your git repository's exclude file"

#TODO check for presence of ./.git/info/exclude else return error
check_exclude

#TODO for each argument at invocation append to ./.git/info/exclude
read_input
