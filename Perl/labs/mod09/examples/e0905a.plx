#!/usr/bin/perl -w

$dir = $ARGV[0];
$pattern = $ARGV[1];

@dirstruct = `find $dir -name $pattern -print`;

print @dirstruct;
