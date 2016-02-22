#!/usr/bin/perl -w

$str = "aaaabbbccccdddddd";

print "Start with: $str\n";

$str =~ tr/a-z/a-z/s ; #remove all repeating letters
print "After tr, \$str = $str\n";
