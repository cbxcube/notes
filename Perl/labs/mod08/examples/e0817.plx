#!/usr/bin/perl -w
use strict;

BEGIN{ unshift(@INC,"$ENV{HOME}/mod08/examples/"); }
use Mathmod;

my $x = 2; my $y = 3;

my $sum = Mathmod::add($x, $y);
my $diff = Mathmod::subtract($y, $x);
my $product = Mathmod::mult($x, $y);

print "Sum = $sum\n";
print "Diff = $diff\n";
print "Product = $product\n";

my $localsum = add($x, $y);
print "LocalSum = $localsum\n";

sub add { # Duplicate Add module
  my ($a, $b) = ($_[0], $_[1]);
  return $a + $b + 1;
}
