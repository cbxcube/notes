#!/usr/bin/perl -w

$infile = $ARGV[0];
$outfile = $ARGV[1];
$count = 0;
$replaced = 0;

print "Usage: lab07b.plx input_file output_file\n" if @ARGV != 2;

open INFILE,$infile or die "Open failed: $!\n";
open OUTFILE,">$outfile" or die "Open failed: $!\n";

print "Please enter the string you wish to search for: "; chomp($srchstrng=<STDIN>);
print "Please enter the replacement string: "; chomp($rplcstrng=<STDIN>);



while (<INFILE>) {
  $temp = s/$srchstrng/$rplcstrng/g;
  print OUTFILE;
  $count++;
  $replaced += $temp;
}
print "$count lines searched.\n";
print "$replaced replacements.\n";

close INFILE;
close OUTFILE;
