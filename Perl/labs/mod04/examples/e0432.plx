#!/usr/bin/perl -w

# split uptime
$upstats = qx/uptime/;

print "Command Output: $upstats\n";

@temp = split(/,/,$upstats); # Remove commas
$tempstr = join(" ",@temp); # Rejoin with spaces

@up = split(' ', $tempstr); # Remove all spaces

print "==Perl uptime==\n";
print "Up Time: $up[2]\n";
print "# of Users: $up[5]\n";
print "Load average: $up[9] $up[10] $up[11]\n" ;
