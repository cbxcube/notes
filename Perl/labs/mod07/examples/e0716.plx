#!/usr/bin/perl -w

$host = $ARGV[0]; # Get host name

print "Is the system up?\n";

system "ping -s $host" and die "Cmd failed: $!\n";

system "cal 1 2010" and die "Cmd failed: $!\n";
