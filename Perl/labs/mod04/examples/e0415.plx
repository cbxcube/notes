#!/usr/bin/perl -w

@planet = qw(mercury venus earth mars);

$newlen = push(@planet, "jupiter");

print "\@planet = @planet\n";
print "\@planet length = $newlen\n";
