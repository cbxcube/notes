#!/usr/bin/perl -w
$a = "Hello "; $b = "World!";

$c = $a + $b;
print "Add \$a + \$b and you get: $c \n";

$d = $a.$b;
print "Concatenate \$a and \$b and you get: $d\n";

$d = $d."\n";
print "Add \\n to \$d\n";
print "Print \$d four times using the x operator: \n";
print $d x 4;

chop($d);
print "Remove \\n with chop() and print \$d 4 times: \n";
print $d x 4;
