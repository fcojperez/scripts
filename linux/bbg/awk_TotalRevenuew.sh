#!/usr/bin/bash

# Script for calculating totals and seeing how works variables

clear
echo "Calculating total revenues from file revenues appling file total.awk"
echo
echo "Printing file revenues"
cat revenues
echo
echo "Calculating Total Revenue"
awk -f total.awk revenues
