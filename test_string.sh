#!/bin/bash

#Script to test string

S="maybe"

if [ -z "$S" ]; then
	echo "string is null" >&2
	exit 1
fi

if [ "$S" == "yes" ]; then
	echo "string is yes"
elif [ "$S" == "maybe" ]; then
	echo "string is maybe"
else 
	echo "string is unknown"
fi
