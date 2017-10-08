#!/usr/bin/bash

clear

printf "The script starts now\n"

printf "Hi, $USER!\n"

set -x
printf "I will now fetch you a list of connected users:\n"
w

printf "\nI'm setting tow variables now.\n"

COLOR="black"
VALUE="9"
set +x
printf "This is a string: $COLOR\n"
printf "And this is a number: $VALUE\n"

printf "I'm giving you back your prompt now\n"
