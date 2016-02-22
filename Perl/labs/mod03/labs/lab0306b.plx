#!/usr/bin/perl -w

print "Enter an ASCII value: ";
chomp($number = <STDIN>);

print "Value  Letter\n";

for ( $a = $number; $a <= 127 ; $a++) {
  $next = chr($a);
  print "  $a      $next\n"; 
}
