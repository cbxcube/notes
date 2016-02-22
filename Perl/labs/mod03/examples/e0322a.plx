#!/usr/bin/perl -w

print "Enter a number from 1 to 3: ";
chomp($a = <STDIN>);

  if    ($a == 1) { print "1 selected\n"; }
  elsif ($a == 2) { print "2 selected\n"; }
  elsif ($a == 3) { print "3 selected\n"; }
  else            { print "None of the above\n"; }

print "End of switch\n";
