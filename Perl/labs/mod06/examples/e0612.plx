#!/usr/bin/perl -w

$search = "The stars live in hollywood, Hollywood, HollyWood!\n";

# Swap TinselTown for all Hollywood's, ignore case
$search =~ s/Hollywood/TinselTown/ig;

print $search;
