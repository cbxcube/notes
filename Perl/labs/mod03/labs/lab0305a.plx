#!/usr/bin/perl -w

print "Enter the number of times to display: ";
chomp($num = <STDIN>);

$x = 1;

while ($x <= $num) {
  print "Hello World! ";
  $x++;
}
print "\n"
