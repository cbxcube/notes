#!/usr/bin/perl
print "\nPlease enter the number of miles: ";
chomp($miles=<STDIN>);
$kilometers = $miles * 1.6;
print "$miles miles is $kilometers km.\n\n";

