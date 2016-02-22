#!/usr/bin/perl -w

use 5.010;
$acount=0;
$bcount=0;
$ccount=0;
$count=0;

@letterlist = qw/a b c d e f g a b c d e/;

foreach (@letterlist) {
	given ($_) {
		when ($_ eq "a") {$acount++ ; }
		when ($_ eq "b") {$bcount++ ; }
		when ($_ eq "c") {$ccount++ ; }
		default {$count++ ;}
	}
}
print "$acount a's.\n";
print "$bcount b's.\n";
print "$ccount c's.\n";
print "$count others.\n";
print $#letterlist + 1," characters in the array.\n";
print "Last character is: ",$letterlist[$#letterlist],"\n";
