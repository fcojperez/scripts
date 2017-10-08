#!/usr/bin/bash

# This script makes a backup of my home directory

# Change the values of the variables to make the script work for you
BACKUPDIR=$HOME
BACKUPFILES=*
TARFILE=/var/tmp/home_$USER.tar
BZIPFILE=$TARFILE.bz2
LOGFILE=$HOME/log/home_backup.log

cd $BACKUPDIR

# This creates the archive
tar cf $TARFILE $BACKUPFILES > /dev/null 2>&1

# First remove the old bzip2 file. Redirect errors because this generate errors
# if the file does not exist. Then create a new compressed file.
rm $BZIPFILE 2 > /dev/null 
bzip2 $TARFILE

date >> $LOGFILE
echo backup succedd >> $LOGFILE
