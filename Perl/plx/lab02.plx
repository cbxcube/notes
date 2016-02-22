#!/usr/bin/perl -w

#$a = 2;
#$b = 3;
$a = 0;
$b = 0;

print "Enter a value for a: ";
$INA = <STDIN>;
print "Enter a value for b: ";
$INB = <STDIN>;
$a = $INA;
$b = $INB;
print "a = $a\n";
print "b = $b\n";

$SUM = $a + $b;
$MULT = $a * $b;
print "a + b = $SUM\n"; 
print "a * b = $MULT\n";

print "c = a * b\n";
$c = $a * $b;
print "c = $c\n";

print "c = c + 3\n";
$c = $c + 3;
print "c = $c\n";

print "c += 3\n";
$c += 3;
print "c = $c\n";

$d = $c++;
print "d = $d and c = $c\n";

$e = ++$c;
print "e = $e and c = $c\n";



