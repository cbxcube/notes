#!/usr/bin/perl -w

$phone = "Washington,George,302-555-1212";

# Find first comma
$i = index($phone,",");
print "1st comma is at position $i\n"; # $i = 10

# Find first dash from right
$i = rindex($phone,"-");
print "Last dash is at position $i\n"; # $i = 25

# Print name, first last
$first = substr($phone,11,6);
$last = substr($phone,0,10);
print "Name: $first $last\n";

