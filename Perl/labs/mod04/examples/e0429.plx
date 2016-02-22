#!/usr/bin/perl -w

@arr = qw/ab abc abcd bc c/;

@garr = grep /^a/, @arr;
$count = @garr;

print "$count matches were found\n";
print "Words that start with a: @garr\n";
