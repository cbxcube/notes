#!/usr/bin/perl -w

$str = "abcdabcd";

$str =~ tr/a/A/; # Make A's Uppercase
print "After first tr, \$str = $str\n";

$str =~ tr/a-z/A-Z/ ; # Make all Upper 
print "After second tr, \$str = $str\n";
