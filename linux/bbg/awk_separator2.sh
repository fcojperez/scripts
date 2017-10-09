#!/usr/bin/bash

# This is script print a list of user based on awk file

clear
awk -f printnames.awk /etc/passwd
