#!/usr/bin/perl -w

$FAR = 0;
$CEL = 0;


print "Enter a temperature in Celsius: ";
chomp($CEL = <STDIN>);
$FAR = ((9/5) * $CEL) + 32;

print "$CEL degrees Celcius is $FAR degrees in Fahrenheit.\n";

print "Enter a temperature in Fahrenheit: ";
chomp ($FAR = <STDIN>);

$CEL = ($FAR - 32) * (5/9);
print "$FAR degrees in Fahrenheit is $CEL degrees in Celcius.\n";
