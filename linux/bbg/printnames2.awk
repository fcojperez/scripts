BEGIN { FS=":" ; 
print "List of users:\n" 
}
{ print $1 "\t" $5 }
END { print "Anything else?"}
