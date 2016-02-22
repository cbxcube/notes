#!/usr/bin/perl -w 

print "The date is ", qx/date/, "\n";

print "The following people are logged in:\n";

@list = qx/who | grep root/;
print @list;
