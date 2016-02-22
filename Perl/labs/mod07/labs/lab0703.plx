#!/usr/bin/perl -w
$count = 0;
$replaced = 0;

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
  
  $temp = s/$search/$replace/g;
  print OUT $_ ;
  $count++;
  $replaced += $temp;
  
}

close(IN);
close(OUT);

print "$count lines searched.\n";
print "$replaced replacements.\n";
