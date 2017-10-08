#!/bin/bash

check()
{
    if [ -z $PS1 ] ; then
        echo "non-interactive mode"

    else
        echo "interactive mode"
    fi
}

MY_PROMPT='$'
while :
do
    echo -n "$MY_PROMPT "
    read line
    check
    eval "$line"
done

exit 0
