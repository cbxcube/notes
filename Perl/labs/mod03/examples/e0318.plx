#!/usr/bin/perl -w

$miles = "";

until ($miles eq "q"){
  print "Enter q to exit\n";
  print "Please enter the number of miles: ";
  chomp($miles = <STDIN>);

  last if $miles eq "q";

  $kilometers = $miles * 1.6;
  print "$miles miles is $kilometers km.\n\n";
}
