# This script is a string comparasion
# Based on point 7.1.2.3 of Bash-Biginners-Guide
# Developer: Francisco Perez
# email: fcojperez@gmail.com
# date: 10/19/2017 (MM/DD/YYYY)

clear
message="Usage: $0 [male|female]"

# Checking the number of parameters
if [ ! $# == 1 ] ; then
    echo $message
    exit 1
fi

gender=$1

# ********* STRING COMPARASIONS *********

# Checking parameters with regular expressions
if [[ ! ( ("$gender" =~ f*) && ("$gender" =~ m*) ) ]] ; then
    echo "Please, introduce on of these values: female or gender"
    exit 2
fi

if [[ "$gender" =~ 'female' ]] ; then
    echo "Pleassure to meet you, Madame."
elif [[ "$gender" =~ 'male' ]] ; then
    echo "Pleassure to meet you, Sir"
else
    echo "The gender introduced is invalid"
    echo "$message"
fi
