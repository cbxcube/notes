#!/usr/bin/perl -w

# Numeric
$a = (3 <=> 2); # Left side greater
$b = (3 <=> 3); # Equal
$c = (3 <=> 4); # Right side greater
print "\$a = $a \$b = $b \$c = $c\n";

# Strings
$a = ("c" cmp "b"); # Left side greater
$b = ("c" cmp "c"); # Equal
$c = ("c" cmp "d"); # Right side greater
print "\$a = $a \$b = $b \$c = $c\n";
