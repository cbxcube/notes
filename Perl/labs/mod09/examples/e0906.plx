#!/usr/bin/perl -w

$dir = $ARGV[0];

foreach $_ (sort <$dir/*plx>){
  print "$_ \n";
}
