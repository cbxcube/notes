#!/usr/bin/perl -w

$dir = $ARGV[0];

opendir(DIR,$dir) || die("Cannot open $dir: $!\n");

foreach $file (sort readdir(DIR)){
  print "$file\n";
}

print "\n";
close(DIR);
