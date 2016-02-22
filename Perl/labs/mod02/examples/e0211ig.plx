#!/usr/bin/perl
# Read a value using <STDIN>
print "What is your favorite color? ";
chomp($in = <STDIN>);
$/ = "e";
chomp($in);
print "Your favorite color is: $in\n";

