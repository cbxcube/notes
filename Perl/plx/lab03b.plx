#!/usr/bin/perl -w

$COUNT="";

while ($COUNT ne "0") {
print "Enter the number of times to display (0 to quit): \n";
chomp($COUNT = <STDIN>);

print "Hello World!" x $COUNT;
print "\n";
}
