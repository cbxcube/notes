#!/usr/bin/perl -w

$file = "temp.pl";

-e $file || die("File doesn't exist.\n");
-w _ || die "File isn't writable.\n" ;

print "File is exists and is writeable.\n";
