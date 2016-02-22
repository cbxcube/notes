#!/usr/bin/perl -w

# Split word apart
$word = "Gandalf" ;

@chars = split(//, $word);

for ($x = 0; $x <= $#chars; $x++){
  
  print "Element[$x]: $chars[$x]\n";
}
