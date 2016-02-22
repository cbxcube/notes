#!/usr/bin/perl -w
use strict;

# return the list ($sec, $min, $hour, 
# $mday, $mon, $year, $wday, $yday, $isdst)
my @time = localtime() ;

foreach (@time){
  print "$_--";
}
print "\n";

# returns the string "Fri May 11 10:20:02 2001"
my $time = localtime() ;
print "$time\n";
