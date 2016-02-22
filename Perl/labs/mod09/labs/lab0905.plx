#!/usr/bin/perl -w

$dir = $ARGV[0];

chdir($dir) || die("Cannot cd to $dir : $!\n");

foreach $file (sort <\.* *>){ # .* and * gets all files
  print "$file\n";
}

print "\n";
