#!/usr/bin/perl -w
$address = "Doe,Jane,Washington,DC"; 

substr($address, 0, 3) = "Smith" ; # New last name
print "Address now: $address\n";

$replaced = substr($address, 6, 4, "John"); # New first
print "Address now: $address\n";
print "What was replaced? $replaced\n";
