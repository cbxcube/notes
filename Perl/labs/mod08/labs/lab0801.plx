#!/usr/bin/perl -w
use strict;

# Get Number from 1 to 10
my $in = 0;
while ($in ne "q"){
  print "Enter a number from 1 to 10 or (q)uit: ";
  chomp($in=<STDIN>);
  last if ($in eq "q" || $in eq "");

  my $retval = c2roman($in);
  print "Your number $in is: $retval\n";
}

sub c2roman{
  my $num = $_[0];
  my @roman;
  @roman = qw( I II III IV V VI VII VIII IX X );
  if ($num > 0 and $num < 11) {  return $roman[$num-1]; }
  else { return $num ; }
}
