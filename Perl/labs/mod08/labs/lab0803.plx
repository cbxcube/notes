#!/usr/bin/perl
use strict;

my $a = 0; my $b = 0;
print "Please enter two numbers from 1 to 10.\n";

while ($a ne "q"){
  print "Enter \$a or (q)uit: ";
  chomp($a=<STDIN>);
  last if $a eq "q" or $a eq "";

	print "Enter \$b: ";
  chomp($b=<STDIN>);

  print prtroman($a,$b),"\n";
}

sub prtroman{
  my $a = $_[0];
  my $b = $_[1];
  my $c = sumab($a,$b);

	$c = c2roman($c);
  $a = c2roman($a);
  $b = c2roman($b);

  return "$a plus $b equals $c";
}

sub c2roman{
  my $num = $_[0];
  my @roman;
  @roman = qw( I II III IV V VI VII VIII IX X );
  if ($num > 0 and $num < 11) {  return $roman[$num-1]; }
  else { return $num ; }
}

sub sumab{
  my $a = $_[0];
  my $b = $_[1];
	return $a + $b;
}
