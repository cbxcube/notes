#!/usr/bin/perl -w
# Read a value using <STDIN>
print "What is your favorite color? ";
$in = <STDIN>;
$a = $in;
$b = $in;

# chop $a twice and print
chop($a);
chop($a);
print "Your favorite color is: $a\n";

# chomp $b twice and print
chomp($b);
chomp($b);
print "Your favorite color is: $b\n";


