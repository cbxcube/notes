#!/usr/bin/perl -w

#Get file parameters
$fileIn = $ARGV[0];
$fileOut = $ARGV[1];

#Get search and replace values
print "Please enter the string you wish to search for: ";
chomp($search=<STDIN>);

print "Please enter the replacement string: ";
chomp($replace=<STDIN>);

#Open file and perform replace.
open(OUT,">$fileOut") || die("Open failed: $!\n");
open(IN, $fileIn) || die("Open failed: $!\n");

while (<IN>){
  s/$search/$replace/g;
  print OUT $_ ;
}

close(IN);
close(OUT);

