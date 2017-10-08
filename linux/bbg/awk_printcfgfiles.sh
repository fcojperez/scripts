#!/usr/bin/bash

# This script is for printing a list of config files from /etc directory which start with characters a or x

clear
echo "Listing config files which start with character a or x"

ls -lR /etc | awk '/\<(a|x).*\.conf$/ { print $9 }'
