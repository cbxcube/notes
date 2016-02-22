#!/usr/bin/perl -w

print "Please enter a value for \$a and press enter: ";
chomp($a = <STDIN>);

print "Please enter a value for \$b and press enter: ";
chomp($b = <STDIN>);

$c = $a + $b;
print "Add \$a + \$b and you get: $c \n";

$d = $a . $b;
print "Concatenate \$a and \$b and you get: $d\n";

$d = $d . "\n";
print "Add \\n to \$d and use the x operator to print \$d 4 times: \n";
print $d x 4;

chop($d);
print "Remove \\n with chop() and print 4 times you get: \n";
print $d x 4;


