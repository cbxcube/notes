#!/usr/bin/perl -w


$a = "Hello ";
$b = "World!";

print "Enter a value for a: ";
chomp ($INA = <STDIN>);
print "Enter a value for b: ";
chomp ($INB = <STDIN>);

$a = $INA;
$b = $INB;

$c = $a + $b;
print "a + b = $c\n";

$d = $a.$b;
print "Concatenate a \"$a\" and b \"$b\" and you get $d\n";

$d .= "\n";
print "$d";

print "$d" x 4;

chop($d);

print "$d" x 4;
