#!/usr/bin/perl -w
use strict;

unshift(@INC,"$ENV{HOME}/mod08/examples/");
require "mathlib.pl";

my $x = 2; my $y = 3;

my $sum = add($x, $y);
my $diff = subtract($y, $x);
my $product = mult($x, $y);

print "Sum = $sum\n";
print "Diff = $diff\n";
print "Product = $product\n";

sub add { # Duplicate Add module
  my ($a, $b) = ($_[0], $_[1]);
  return $a + $b + 1;
}
