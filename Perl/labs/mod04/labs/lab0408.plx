#!/usr/bin/perl -w

# Split a Sentence
print "Enter a sentence: ";
chomp($line = <STDIN>);

@arr1 = split(' ', $line);

for ($x = 0; $x <= $#arr1; $x++) {
  print "\$arr1[$x] = $arr1[$x]\n";
}
