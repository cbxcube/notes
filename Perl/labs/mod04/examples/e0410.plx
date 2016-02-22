#!/usr/bin/perl -w
# List Parameters passed in @ARGV

$i=0;

for (@ARGV) {
print "Option ", ++$i,": $_\n";
}
