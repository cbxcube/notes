#!/usr/bin/perl -w
print "\n";

print "Please enter the temperature in Celsius: ";
chomp($celsius = <STDIN>);

$fahr = (9/5) * $celsius + 32;

print "$celsius degrees Celcius is $fahr degrees Fahrenheit \n\n";

