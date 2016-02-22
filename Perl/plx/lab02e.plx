#!/usr/bin/perl -w

$phone = "Washington,George,302-555-1212";

$firstcomma = index($phone, ",");
$lastdash = rindex($phone, "-");

print "first comma is at position $firstcomma.\n";
print "last dash is at position $lastdash.\n";

$firstname = substr($phone, $firstcomma + 1, 6);
$lastname = substr($phone, 0, $firstcomma);

print "$firstname $lastname\n";
