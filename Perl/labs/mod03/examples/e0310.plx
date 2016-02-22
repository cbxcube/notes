#!/usr/bin/perl -w
$miles = "";

until ($miles eq "0"){

  print "Enter 0 to exit\n";
  print "Please enter the number of miles: ";
  chomp($miles=<STDIN>);
  
  $kilometers = $miles * 1.6;
  print "$miles miles is $kilometers km.\n\n";
}
