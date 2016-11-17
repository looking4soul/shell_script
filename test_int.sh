#!/bin/bash

#Test int

INT=-5

if [ $INT -eq 0 ]; then
	echo "int equal to 0"
elif [ $INT -lt 0 ]; then
	echo "int little than 0"
elif [ $INT -gt 0 ]; then
	echo "int larger than 0"
fi
