#!/usr/bin/perl -w

print "Enter a letter: ";
chomp($letter = <STDIN>);

print "Letter  Value\n";

for ( $a = ord($letter); $a <= 127 ; $a++){
  $next = chr($a);
  print "  $next      $a\n"; 
}
