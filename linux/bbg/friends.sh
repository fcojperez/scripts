#!/bin/bash

# This is a program that keeps your address book up to date.
# NOTE: this script is slight variation of a script defined on Bash-Beginners-Guide.pdf on point 8.2.2. Prompting for user input
# link: http://www.tldp.org/LDP/Bash-Beginners-Guide/html/Bash-Beginners-Guide.html
# Developer: Francisco Perez
# email: fcojperez@gmail.com
# date: 10/17/2017 (MM/DD/YYYY)

userDIR="/var/tmp/$USER"
friends="$userDIR/friends.txt"

# Checking $USER's directory exists

if [ ! -d $userDIR ] ; then
    mkdir $userDIR
fi

# Checking $USER's friends database
if [ ! -e $friends ] ; then
    touch $friends
fi


echo "Hello, "$USER". This script will register you in $USER's friends database."

echo -n "Enter your name and press [ENTER]: "
read name
echo -n "Enter your gender and press [ENTER]: "
read -n 1 gender
echo

grep -i "$name" "$friends"

if [ $? -eq 0 ] ; then
    echo "You are already registered, quitting."
    exit 1
elif [ "$gender" == "m"  ] ; then
    echo "You are added to $USER's friends list."
    exit 1
else
    echo -n "How old are you? "
    read age
    if [ $age -lt 25 ] ; then
        echo -n "Which colour of hair do you have? "
        read colour
        echo "$name $age $colour" >> "$friends"
        echo "You are added to $USER's friends list. Thank you so much!"
        exit 1
    fi
fi
