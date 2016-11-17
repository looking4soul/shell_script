#!/bin/bash

#Test file expr

FILE=~/.bashrc

if [ -e "$FILE" ]; then
	if [ -r "$FILE" ]; then
		echo "$FILE is readable"
	fi
else
	echo "$FILE does not exists"
	exit 1
fi

exit
