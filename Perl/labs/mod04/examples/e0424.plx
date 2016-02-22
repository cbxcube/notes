#!/usr/bin/perl -w

# String Sort (Default)
@arr = qw(bb aa dd cc 1 12 2 23 4);

@sarr = sort{ $a cmp $b } @arr;

print "The sorted list is: @sarr\n";
