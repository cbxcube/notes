#!/usr/bin/perl -w
use strict;

# Move directory to the front of array
unshift(@INC,"$ENV{HOME}/mod08/examples/");
require "mathlib.pl";

my $x = 2; my $y = 3;

my $sum = add($x, $y);
my $diff = subtract($y, $x);
my $product = mult($x, $y);

print "Sum = $sum\n";
print "Diff = $diff\n";
print "Product = $product\n";
