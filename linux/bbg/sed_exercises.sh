#!/usr/bin/bash

# Script with Bash Beginners Guide Ghapter 5 Excersise

# 1. Printin a list of files in your scripts directory ending with "sh"

echo "Listing scripting files ending with sh"

ls -R $HOME/scripts | sed -n '/sh$/p'

# 2. Make a list of files in /usr/bin that have the letter "a" as second character. Put results in temporary file

echo "Listing in temporary file a list of files in /usr/bin directory having letter 'a' as second character"

TEMPFILE=/var/tmp/usrBinFileList.tmp

ls -R /usr/bin | sed -n '/^.[a]/p' > $TEMPFILE

cat $TEMPFILE
