#!/usr/bin/perl -w

$old = $ARGV[0];
$new = $ARGV[1];

rename($old,$new) || die("Can't rename $old: $!\n");

print "Renamed $old to $new \n";
