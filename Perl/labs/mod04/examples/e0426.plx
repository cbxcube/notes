#!/usr/bin/perl -w

# Numeric Sort, Ascending
@arr = qw(1 12 2 23 4);

@sarr = sort{ $a <=> $b } @arr;

print "The sorted list is: @sarr\n";
