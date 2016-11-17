#!/bin/bash

#Test int regex 

INT=-5678

if [[ "$INT"=~^-?[0-9]+$ ]]; then
	echo "$INT is a number"
else
	echo "$INT is not a number"
	exit 1
fi
