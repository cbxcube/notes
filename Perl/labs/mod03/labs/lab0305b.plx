#!/usr/bin/perl

print "Enter the number of times to display: ";
chomp($num = <STDIN>);

for ($x = 1; $x <= $num; $x++) {
  print "Hello World! ";
}
print "\n";
