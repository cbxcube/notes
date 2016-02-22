#!/usr/bin/perl -w

$filename=$ARGV[0];
$count=0;

print "$filename:\n";

open INPUT,$filename or die "Open failed: $!\n";

while ( $line=<INPUT> ) {
	$count++;
	print "$count: $line";
	if ( $count % 24 == 0 ) {
	   print "press enter to contine...\n";
	   $_=<STDIN>;
	}
}
close INPUT;
