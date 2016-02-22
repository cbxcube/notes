#!/usr/bin/perl -w

print "Enter a number: ";
chomp($num=<STDIN>);

if ($num == 0) { 
  print "You entered a 0\n";
}

elsif ($num >= 10) { 
  print "$num is equal to or greater than 10\n";
}

elsif ($num < 10 && $num > 0) { 
  print "$num is between 1 and 9\n";
}
  
else { 
  print "$num is less than zero\n";
}
