#!/usr/bin/perl -w
use strict;

my $str = "a:b:c";

my @arr1 = split3($str); #array
my $length = split3($str); #scalar

print "The values in \$str are:\n";

foreach (@arr1){ 
  print "$_ "; 
}
print "\nThe length is $length\n";

sub split3 {
  my $tempstr = $_[0];
  my @list = split(/:/,$tempstr);
  
  my $len = @list;
  
  return @list if wantarray();
  return $len;
}
