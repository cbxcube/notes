#!/usr/bin/perl -w

print "Calcuate the hypotenuse of a triangle given a^2 + b^2 = c^2\n";
print "Enter the value for side a: ";
chomp($INA = <STDIN>);
print "Enter the value for side b: ";
chomp($INB = <STDIN>);

$a = $INA;
$b = $INB;

$c = sqrt(($a ** 2) + ($b ** 2));

print "The hypotenuse length is $c.\n";
