#!/usr/bin/perl -w 

$a = "green xxx brown xxx yellow xxxx xxxx gray xxxx pink";

print "Starting value:\n";
print "$a \n\n";

$a =~ s/\sx{3}\s/ red /g;

print "After substituting red:\n";
print "$a\n\n";

$a =~ s/\sx{4}/ blue/g;

print "After substitution blue:\n";
print "$a\n\n";

