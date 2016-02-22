#!/usr/bin/perl -w
use strict; 

print "Please enter two numbers from 1 to 10.\n";
my $a = 0;
while ($a ne "q"){
  print "Enter \$a  or (q)uit: ";
  chomp($a=<STDIN>);
  last if $a eq "q" or $a eq "";

	print "Enter \$b: ";
  chomp($b=<STDIN>);

  my $reta = c2roman($a);
  my $retb = c2roman($b);
  my $c = sumab($a, $b);
  my $retc = c2roman($c);
  print "$reta plus $retb equals $retc\n";
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
