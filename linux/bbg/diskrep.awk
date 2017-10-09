BEGIN { print "*** WARNING WARNING WARNING ***" }
/\<[2|3][0-9]%/ { print "Partition " $6 "\t: " $5 " of full" }
END { print "*** Give money for new disks URGENTLY! ***" }
