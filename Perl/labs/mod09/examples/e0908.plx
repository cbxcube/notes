#!/usr/bin/perl -w

$newfile = $ARGV[0];

# Next to lines create an empty file
open(FH, ">$newfile") || die("Open failed: $!\n");
close FH;

chmod(0644, $newfile); # Set permissions to 644

symlink($newfile, "$newfile.mirror"); # Create link

