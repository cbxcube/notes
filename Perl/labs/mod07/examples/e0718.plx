#!/usr/bin/perl -w

$filename = shift(@ARGV);

open INPUT,"$filename" or die "Open failed: $!\n";

open OUT,"| wc" or die "Output failed: $!\n";

print "   Lines   Words   Chars\n";

while (<INPUT>){
  print OUT;
}

close INPUT;
close OUT;
