#!/usr/bin/perl -w
use strict;

my $x = 2; my $y = 3;

my $sum = add($x, $y);
my $diff = subtract($y, $x);
my $product = mult($x, $y);

print "Sum = $sum\n";
print "Diff = $diff\n";
print "Product = $product\n";

sub add {
  my ($a, $b) = ($_[0], $_[1]);
  return $a + $b;
}

sub subtract {
  my ($a, $b) = ($_[0], $_[1]);
  return $a - $b;
}

sub mult {
  my ($a, $b) = ($_[0], $_[1]);
  return $a * $b;
}
