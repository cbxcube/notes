#!/usr/bin/perl -w

# Logical and 
$x = ( 4 - 4  && "snoopy"); # Left false, right skipped
print "\$x = $x\n"; # $x = 0

$x = ( 4 + 2 && "snoopy"); # Left true, right evaluated
print "\$x = $x\n"; # $x = "snoopy"

$x = ( 4 + 2 && 5 - 2); # Left true, right evaluated
print "\$x = $x\n"; # $x = 3

# Logical or
$x = ( 4 + 2 || 5 - 2); # Left true, right skipped
print "\$x = $x\n"; # $x = 6

$x = ( 4 - 4 || "snoopy"); # Left false, right evaluated
print "\$x = $x\n"; # $x = snoopy
