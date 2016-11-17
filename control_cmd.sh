#!/bin/bash

#test control cmd

false || false || echo "falas 3" 

true || true || echo "true 3"; echo "true 4"

true || true || { echo "true 5"; echo "true 6"; }
