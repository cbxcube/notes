#!/usr/bin/perl -w

# Join sentence using two colons ::

$line = "It's time to say goodbye";

@words = split(/ /, $line);

for ($x = 0; $x <= $#words; $x++){
  
  print "Element[$x]: $words[$x]\n";
}

$line = join("::", @words); # Join @words

print "\$line now is: $line\n"
