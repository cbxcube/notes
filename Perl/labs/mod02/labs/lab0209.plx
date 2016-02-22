#!/usr/bin/perl -w
# Pythagorean Theorem
print "Enter a value for each side of the triangle:\n";		

# read in two values, one per line
print "Side A = ";
chomp($a = <STDIN>);

print "Side B = ";			
chomp($b = <STDIN>);

# Pythagorean Theorem
$c = sqrt ($a ** 2 + $b ** 2);		

# output with variable interpolation and newline
print "If side A is $a and B is $b, then the hypotenuse is $c \n";		
