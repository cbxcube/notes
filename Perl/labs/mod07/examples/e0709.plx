#!/usr/bin/perl -w 

# Open files
open IN,"names1.txt" or die "Open failed: $!\n";
open OUT,">out.txt" or die "Open failed: $!\n";

# Read a line and write it out
while (<IN>) {
  print OUT "Out data: $_";
}

close IN;
close OUT;

print "File written\n";
