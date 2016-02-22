#!/usr/bin/perl -w
$sum = 0;

# Sum a list of numbers
print "Enter a list of numbers: ";
chomp(@arr1 = <STDIN>);

$length = @arr1; # Get length

foreach $_ (@arr1){ # Compute sum
  $sum = $sum + $_;
}

print "Numbers entered: @arr1\n";
print "The total is: $sum \n";
print "The average is: ",($sum / $length),"\n";
