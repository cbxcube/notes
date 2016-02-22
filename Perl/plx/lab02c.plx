#!/usr/bin/perl -w

$a = 0;
$b = 0;

print "Enter a value for a: ";
chomp ($INA = <STDIN>);
print "Enter a value for b: ";
chomp ($INB = <STDIN>);

$a = $INA;
$b = $INB;

print "The value you entered for a is $a.\n";
print "The value you entered for b is $b.\n";

$c = $a * $b;

print "$a * $b = $c\n";

