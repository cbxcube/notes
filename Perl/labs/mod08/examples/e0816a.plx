#!/usr/bin/perl -w
use strict;

unshift(@INC,"$ENV{HOME}/mod08/examples/");
require "mathpack.pl";

my $x = 2; my $y = 3;

my $sum = mathpack::add($x, $y);
my $diff = mathpack::subtract($y, $x);
my $product = mathpack::mult($x, $y);

print "Sum = $sum\n";
print "Diff = $diff\n";
print "Product = $product\n";

my $localsum = add($x, $y);
print "LocalSum = $localsum\n";

sub add { # Duplicate Add module
  my ($a, $b) = ($_[0], $_[1]);
  return $a + $b + 1;
}
