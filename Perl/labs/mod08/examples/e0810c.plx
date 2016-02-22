#!/usr/bin/perl -w
use strict;

my $hero = "Batman"; 
my $sidekick = "Robin"; 
my $car = "Batmobile";

print "$hero\'s sidekick is $sidekick\n";
print "$hero\'s car is a $car\n\n";

printall();

print "$hero\'s sidekick is $sidekick\n";
print "$hero\'s car is a $car\n";

sub printall{
  my $car = "Pinto";
  printsk();
  printcar($car);
}

sub printsk{
  my $sidekick = "Batgirl";
  print "$hero\'s sidekick is: $sidekick\n";
}

sub printcar{
  my $car = $_[0];
  print "$hero\'s car is a $car\n\n";
}
