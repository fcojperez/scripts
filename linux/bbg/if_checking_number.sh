#!/bin/bash

# This script is checking number comparasions in a if clause
clear

echo "First, creating a source of information from /proc/cpuinfo"
echo
head /proc/cpuinfo >> cpu.txt

echo "Second, geting number of lines"
echo
num=`wc -l cpu.txt | sed 's/.cpu.txt//'`

echo "Third, comparing number: $num"

if [ "$num" -gt "5"  ] ; then
    echo 
    echo "$num > 5"
    echo 
else
    echo
    echo "$num <= 5"
    echo
fi

