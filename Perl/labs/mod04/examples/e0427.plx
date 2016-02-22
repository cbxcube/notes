#!/usr/bin/perl

# Sort numbers and strings!
@arr = qw(bb aa dd cc 1 12 2 23 4) ;

@sortedarr = sort{ $a <=> $b || $a cmp $b } @arr ;

print "The sorted list is: @sortedarr\n";
