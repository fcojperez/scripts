#/usr/bin/bash

clear

echo "This information provided by mysystem.sh. Program starts now"

echo "Hello, $USER"
echo

echo "Today´s date is `date`, this week `date +"%V"`."
echo

echo "These users are currently conneted:"
w | cut -d " " -f 1 - | grep -v USER | sort -u
echo

echo "This is `uname -s` running on a `uname -m` processor."
echo

if [ -e /etc/redhat-release ] ; then
    echo "Linux version"
    cat /etc/redhat-release
    echo
fi


echo "This is the updatime information:"
uptime
echo

printf "That's all folks!\n"
