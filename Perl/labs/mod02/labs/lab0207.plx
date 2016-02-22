#!/usr/bin/perl -w
print "\n";

print "Please enter the temperature in Fahrenheit: ";
chomp($fahr = <STDIN>);

$celsius = ($fahr - 32) * (5/9);

print "$fahr degrees Fahrenheit is $celsius degrees Celsius \n\n";
