#!/usr/bin/perl -w 
use strict;
unshift(@INC,"/home/mw119255/lf/mod08/labs/");
require "Stats.pl";

print "Enter a list of numbers one per line.\n";
print "Press ctrl-d when you are finished\n";
my @in = <STDIN> ;
chomp @in;

# Call subroutines.
my $mean = mean(@in) ; # One value returned
my($min, $max) = minmax(@in) ; # Two values returned
output($mean, $min, $max) ; # No value returned
