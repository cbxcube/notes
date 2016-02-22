#!/usr/bin/perl -w 

open FILE, "temp.pl" or die "Open failed: $!\n";

@lines = <FILE>; # Slurp file into array

foreach (@lines){
  print;
}

print "----- EOF ----\n";
close FILE;
