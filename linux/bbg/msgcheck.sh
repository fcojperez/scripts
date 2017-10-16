#!/usr/bin/bash

echo "This scripts checks the existence of the messages file."
echo
echo "Checking"

fl="/var/log/messages"

if [ -f $fl ]
    then
         echo "$fl exists."
    else
         echo "$fl NOT exists"
fi
echo
echo "...done."
