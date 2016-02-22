#!/usr/bin/perl -w 

open FILE,"temp.pl" or die "Open Failed: $!\n";

while (<FILE>){
  print;
}

print "----- EOF ----\n";

close FILE;
