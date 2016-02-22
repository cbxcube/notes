#!/usr/bin/perl -w

# A Perl script that test to see
# if the user enter a nmber and/or float

while (1) {
  print "Enter a number: ";
  chomp ($ans=<STDIN>);

  if ($ans !~ /^(-|\+)?(\.?\d+$|\d+\.?\d*$)/) {
	print "You did NOT enter a number...\n";
  } else {
	print "You did enter a number...\n";
  }
}
