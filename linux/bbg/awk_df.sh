#!/usr/bin/bash

# This a script for printing only lcal disk device information

clear 
echo "Printing local disk device information"

df -h | awk '/dev/ {print $6 " (" $1 ") "  "\t: " $5 " of " $2}'

