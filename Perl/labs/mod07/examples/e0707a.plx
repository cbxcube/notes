#!/usr/bin/perl -w

$filename = "temp.pl";

open FILE,$filename  or die "Open Failed: $!\n";

while (<FILE>){
  chomp; # Remove \n from $_
  print; # Print $_
  print "\n";
}

close FILE;
