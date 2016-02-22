#!/usr/bin/perl -w
$a = 2; $b = 3;

print "a + b = ",$a + $b,"\n";
print "a x b = ",$a * $b,"\n";

# Assign C a value
$c=$a * $b;
print "c = a * b\n";
print "c = $c\n";

# Add three with + operator
$c = $c + 3; 
print "c = c + 3\n";
print "c = $c\n";

# Add 3 using the binary assignment operator  
$c += 3;
print "c += 3\n";
print "c = $c\n";

# Add 1 to $c after assigning $c's value to $d
$d = $c++;
print "d = c ++\n";
print "d = $d and c= $c\n";

# Increment $c, then assign the value to $e
$e = ++$c;
print "e = ++c\n";
print "e = $e and c= $c\n";

