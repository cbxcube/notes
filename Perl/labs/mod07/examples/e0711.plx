#!/usr/bin/perl -w

#Print without special variables changed
print "Before: \n";
print "aa","bb";
print "cc","dd";
print "\n\n";

# Print with $, and $\ changed.
print "After: \n";
$, = "--"; # Changes separator to --
$\ = "\n"; # Appends \n to each print command
print "aa","bb";
print "cc","dd";
