#!/usr/bin/perl -w

$test = "abcdabcdefg";
print "Start with: $test\n";

$test =~ tr/a-z/a-c/ ; #anything past c is c
print "After tr, \$test = $test\n";
