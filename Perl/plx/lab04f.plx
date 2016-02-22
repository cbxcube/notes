#!/usr/bin/perl -w

$NUM_ARGS=@ARGV;
$NUM=0;

foreach (@ARGV) {
	$NUM++;
	print "$_ has $NUM users.\n";
}

