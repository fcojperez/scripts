#!/usr/bin/bash

# This is a simple script that you can use for converting text into HTML
# First we take out all new line characters, so that the appending only happens
# once, then we replace the newlines.

echo "converting $1..."

SCRIPT="$HOME/scripts/linux/bbg/script.sed"
NAME="$1"
TEMPFILE="/var/tmp/sed.$PID.tmp"
sed 's/\n/^M/' $1 | sed -f $SCRIPT | sed 's/^M/\n/' > $TEMPFILE
mv $TEMPFILE $NAME.html

echo "done."
