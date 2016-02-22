#!/usr/bin/perl -w
$address = "Doe,Jane,Washington,DC"; 

$lastname = substr($address, 0, 3); # Get last name
$firstname = substr($address, 4, 4); # Get first name
$state = substr($address, 20); # Get State

#print Results
print "Name: $firstname $lastname\n";
print "State: $state\n";
