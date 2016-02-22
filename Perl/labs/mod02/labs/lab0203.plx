#!/usr/bin/perl -w
print "Please enter a value for a and press enter: ";
chomp($a = <STDIN>);

print "Please enter a value for b and press enter: ";
chomp($b = <STDIN>);

print "a + b = ", $a + $b, "\n";
print "a x b = ", $a * $b, "\n";

# Assign C a value
$c=$a * $b;
print "If c = a x b, c = ", $c, "\n";

# Add three with + operator
$c = $c + 3; 
print "c = c + 3, c now = ", $c, "\n";

# Add 3 using the binary assignment operator
$c += 3;
print "c += 3, c now = ", $c, "\n";

# Add 1 to $c after assigning $c's value to $d
$d = $c++;
print "d = c ++ d = ", $d," and c= ",$c,"\n";

# Increment $c, then assign the value to $e
$e = ++$c;
print "e = ++c e = ", $e, " and c= ", $c, "\n";

