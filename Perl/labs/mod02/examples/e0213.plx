#!/usr/bin/perl -w
$address = "Doe,Jane,Washington,DC" ; 

# Search $address starting at 0 character
$i = index($address,",");
print "1st comma is at position $i\n"; # $i = 3

# Search $address from  first comma
$i = index($address,",",$i+1);
print "2nd comma is at position $i\n"; # $i = 8

# Search $address for a starting from right
$i = rindex($address,",");
print "Last comma is at position $i\n"; # $i = 19
