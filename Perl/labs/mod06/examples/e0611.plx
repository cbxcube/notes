#!/usr/bin/perl -w

$search = "The stars live in hollywood, Hollywood, HollyWood!\n";

# Swap Hollywood for TinselTown, ignore case
$search =~ s/Hollywood/TinselTown/i;

print $search;
