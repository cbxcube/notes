#!/usr/bin/perl -w
# Using counters
$a = 5 ;

$b = $a++ ;    # $b equals 5, $a equals 6
print "a = $a  b = $b\n";

$b = ++$a ;    # $a equals 7, $b equals 7
print "a = $a  b = $b\n";

$b = $a++ * 3 ;# $a equals 7*3=21, $a equals 8
print "a = $a  b = $b\n";
