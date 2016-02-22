#!/usr/bin/perl -w

print "Enter a number from 1 to 3: ";
chomp($a = <STDIN>);

{ # The "last" statement applies to this block
  ($a == 1) && do { print "1 selected\n"; last };
  ($a == 2) && do { print "2 selected\n"; last };
  ($a == 3) && do { print "3 selected\n"; last };
  print "None fo the above\n";
}

print "End of switch\n";
