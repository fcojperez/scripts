#!/usr/bin/bash

# This script es a second version of script for listing config files which start with x or a

clear
echo "Script for listing config file which start with x or a"

ls -lR /etc | awk '/\<[a|x].*\.conf$/ {print $9} END {print "Can I do anythig else for you?"}'
