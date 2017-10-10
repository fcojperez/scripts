#!/usr/bin/bash

# Script for comparing between differents separetors
clear
echo "Blank Spaces separator"
awk '{ print $1 $2 }' test.awk


echo "Comma separetor"
awk '{print $1,$2}' test.awk

echo "WARNING: if you don´t put int the commas, print will treat the itmes to ouput as one argument"
