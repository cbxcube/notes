#! /usr/bin/perl -w

# Split using ' '
$string=" a   b c";

print "Split \"$string\"\n";

@letters = split(' ',$string);

for ($x = 0; $x <= $#letters; $x++) { 
  
  print "Element[$x] = $letters[$x]\n";
}
