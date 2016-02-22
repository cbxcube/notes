#!/usr/bin/perl -w
$celsius = "";

while ($celsius ne "quit"){

  print "\nPlease enter the temperature in Celsius: ";
  chomp($celsius = <STDIN>);
  last if ( lc($celsius) eq "quit" );

  $fahr = (9/5) * $celsius + 32;
  print "$celsius degrees Celsius is $fahr degrees Fahrenheit \n";

  SWITCH:{
  
    if ($fahr > 88) { print "It's hot!\n\n"; last SWITCH;} 
    if ($fahr > 68) { print "Ah, just right! \n\n"; last SWITCH; } 
    if ($fahr > 32) { print "Kinda cool. \n\n"; last SWITCH;  }
    print "Brrrrr, it's cold!\n\n";
  } 
} # end while

