#!/usr/bin/perl -w
$address = "Doe,Jane,Washington,DC"; 

# Calculate length
print "\$address's length is ", length($address), "\n";

$rev = reverse($address); # Reverse $address
print "\$rev = $rev\n";

$lower = lc($address); # Make lowercase
print "\$lower = $lower\n";

$upper = uc($address); # Make uppercase
print "\$upper = $upper\n";

$n = ord("A"); # ASCII of A
print "\$n = $n\n";# $n = 65

$c = chr(65); # ASCII 65 is A
print "\$c = $c\n"; # $c = A
