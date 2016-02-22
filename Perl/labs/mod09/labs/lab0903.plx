#!/usr/bin/perl -w

$dir = $ARGV[0];

chdir($dir) || die("Cannot cd to $dir: $!\n");

#Walk through glob results
foreach $file (sort <*>){
  print $file,"\n";
}

print "\n";
