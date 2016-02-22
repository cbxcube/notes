#!/usr/bin/perl -w
$miles = "";

do {
  print "Enter 0 to exit\n";
  print "Please enter the number of miles: ";
  chomp($miles=<STDIN>);
  
  $kilometers = $miles * 1.6;
  print "$miles miles is $kilometers km.\n\n";
  
} while ($miles ne "0");
