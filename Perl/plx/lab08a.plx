#!/usr/bin/perl -w
use strict;

sub convert {
   my $TMP_NUM=$_[0];
   my @ROM=("I","II","III","IV","V","VI","VII","VIII","IX","X");
   $TMP_NUM = $TMP_NUM - 1;
   return $ROM[$TMP_NUM];
}

while (1) {
  my $NUM = 0;

  print "Enter a nubmer from 1 to 10 or (q)uit: "; chomp($NUM=<STDIN>);
  last if (lc($NUM) eq "q");
  if ($NUM < 1 || $NUM > 10) {
    print "Your number isn't between 1 and 10. \n";
    print "hit enter to try again.\n";
    $_=<STDIN>;
    next;
  }

  my $ROMAN=convert($NUM);

  print "Your number $NUM is: $ROMAN\n";
}
