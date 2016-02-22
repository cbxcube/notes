#!/usr/bin/perl -w

# Descending string sort
@arr = qw(bb aa dd cc 1 12 2 23 4);

@sortedarr = sort{ $b cmp $a } @arr;

print "The sorted list is: @sortedarr\n";
