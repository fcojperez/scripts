#!/usr/bin/bash

# Script for understanding how works OFS (Output Field Separator)
# and ORS (Output Record Separator)

clear

awk 'BEGIN {OFS=";" ; ORS="\n-->\n"} { print $1,$2 }' test.awk
echo
echo "WARNING: mind to put a semicolon between OFS and ORS definition"
