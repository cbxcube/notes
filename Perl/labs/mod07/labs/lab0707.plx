#!/usr/bin/perl -w

$infile = "machine1.txt";
$outfile = "machine2.txt";

open (IN, $infile) || die("Open failed: $!");
open (OUT, ">$outfile") || die("Open failed: $!");

while ($line = <IN>) {

  next if substr($line, 0, 1) eq "#"; # Line is Comment
  last if $line eq "# END DATA"; # Line is end of data

  # split up each data line and swap row 2 and row 3
  chomp $line;
  ($x,$y,$z) = split (/ /, $line);

  # print out the result for the next machine
  print OUT "$x $z $y\n";
  print "$x $z $y\n";
}
