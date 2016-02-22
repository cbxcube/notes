#!/usr/bin/perl -w

# Split on a space
$line = "It's time to say goodbye";

@words = split(/ /, $line);

for ($x = 0; $x <= $#words; $x++){
  
  print "Element[$x]: $words[$x]\n";
}
