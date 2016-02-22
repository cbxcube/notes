#!/usr/bin/perl -w

$a = "green xxx brown xxx yellow xxxx xxxx gray xxxx pink";

print "Starting value:\n";
print "$a\n";

$a =~ s/\bxxx\b/red/g;
print "After substituting red:\n";
print "$a\n";

$a =~ s/\bx{4}\b/blue/g;
print "After substituting blue:\n";
print "$a\n";
