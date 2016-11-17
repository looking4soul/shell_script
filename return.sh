#!/bin/bash

#Script to test the exit status of return and null in a function

test_return () {
	return
}
test_null () {
	a=1
}
$(test_return)
echo $?

$(test_null)
echo $?
