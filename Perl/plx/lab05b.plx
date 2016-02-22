#!/usr/bin/perl -w

%hash1 = ("Apples" => 2,
	   "Oranges" => 4,
	   "Grapes" => 1,
	   "Pears" => 4);

$hash1{Grapefruit} = "2";

foreach $key (sort keys (%hash1)) {
	print "$key --> $hash1{$key}\n";
}

#print "Apples = $hash1{Apples}\n";
#print "Oranges = $hash1{Oranges}\n";
#print "Grapes = $hash1{Grapes}\n";
#print "Pears = $hash1{Pears}\n";
