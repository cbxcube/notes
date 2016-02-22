#!/usr/bin/perl -w 

open FILE,"temp.pl" or die "Open failed: $!\n" ;

while ($line=<FILE>){
  print $line;
}

print "----- EOF -----\n";

close FILE;
