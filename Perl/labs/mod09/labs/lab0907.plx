#!/usr/bin/perl -w

$source = $ARGV[0];
$target = $ARGV[1];

# Create link or die
symlink($source, $target) || die("Can't create link: $!\n");
print "Created link $target\n";
