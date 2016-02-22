#!/usr/bin/perl -w
# Dynamic Type Conversion

print "Please enter two values:\n" ;		

# read in two values, one per line
print "The value for a = ";
chomp($a = <STDIN>);
			
print "The value for b = ";
chomp($b = <STDIN>);

# Multiplication
$p = $a * $b;	

# output with variable interpolation and newline
print "$a x $b = $p\n";		

