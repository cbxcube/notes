#!/usr/bin/perl -w

@planet = qw(mercury venus earth mars);

$last = pop(@planet);

print "$last was removed\n";
print "\@planet = @planet\n";
