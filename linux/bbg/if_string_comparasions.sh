# This script checks if you are root. Therefore, it mades a String comparisons

clear

if [ "$(whoami)" != 'root' ] ; then
    echo "You don´t have permission to run $0 as non-root user."
    exit 1;
else
    echo "You are running $0 as root user."
fi

