#!/usr/bin/perl -w
$hero = "Batman"; $sidekick = "Robin"; $car = "Batmobile";

print "$hero\'s sidekick is $sidekick\n";
print "$hero\'s car is a $car\n\n";

printsk();
printcar();

print "$hero\'s sidekick is $sidekick\n";
print "$hero\'s car is a $car\n";

sub printsk{
  my $sidekick = "Batgirl";
  print "$hero\'s sidekick is: $sidekick\n";
}

sub printcar{
  print "$hero\'s car is a $car\n\n";
}
