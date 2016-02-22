#!/usr/bin/perl -w

@planet = qw(mercury venus earth mars);

$first = shift(@planet);

print "$first was removed\n";
print "\@planet = @planet\n";
