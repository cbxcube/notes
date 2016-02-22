#!/usr/bin/perl -w

$lf = "Doe, Jane";

if ($lf =~ /(\w+),\s(\w+)/){
  print "$2 $1\n"; # Swap first and last
}
