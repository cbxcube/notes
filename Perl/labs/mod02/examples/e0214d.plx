#!/usr/bin/perl -w
$address = "Donne,George,Seattle,WA"; 

# Find the commas
$firstcomma = index($address, ",");
$secondcomma = index($address, ",", $firstcomma + 1);
$lastcomma = rindex($address, ",");

$lastlength = $firstcomma - 0; # Calc length of last name
$lastname = substr($address, 0, $lastlength); # Get last name

# Get First name
$firstlength = ($secondcomma - 1) - $firstcomma; # Calc length
$firstname = substr($address,$firstcomma + 1, $firstlength); # Get first name

# Grab from last comma to end of string
$state = substr($address,$lastcomma + 1);

#print Results
print "Name: $firstname $lastname\n";
print "State: $state\n";
