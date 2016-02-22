#!/usr/bin/perl -w

$str = "jack and jill, jane and spot";

print "Start with: $str\n";

$count = ($str =~ tr/a-z//c); # Count non a-z
print "There were $count non alpha characters\n";

$str =~ tr/a-z/_/c ; # Change to _
print "After tr, \$str = $str\n";
