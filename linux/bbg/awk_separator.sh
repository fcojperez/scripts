#!/usr/bin/bash

# This script is for printing list of users with the columns user and fullname user

clear
echo "List of users:"

awk 'BEGIN {FS=":"} {print $1 "\t" $5}' /etc/passwd
