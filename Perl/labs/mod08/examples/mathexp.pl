#!/usr/bin/perl -w
use strict;
use lib "$ENV{HOME}/mod08/examples/";
use MathmodE;

my $x = 2; my $y = 3;

my $sum = add($x, $y);
my $diff = subtract($y, $x);
my $product = mult($x, $y);

print "Sum = $sum\n";
print "Diff = $diff\n";
print "Product = $product\n";
