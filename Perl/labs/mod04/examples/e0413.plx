#!/usr/bin/perl -w 

@planet = qw(mercury venus earth mars);

# Add planetx to the front
$count = unshift(@planet, "planetx");

print "\@planet contains: @planet\n";
print "There are now $count elements\n";
