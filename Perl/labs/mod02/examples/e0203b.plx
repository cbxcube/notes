#!/usr/bin/perl -w
# Variable Interpolation

$hello="Hello World"; # String var

print '$hello = \'Hello World\'';
print "\n"; # Add a new line
print q/$hello = 'Hello World'/;

print "\n"; # Add a new line
print "\$hello = \"$hello\"\n";
print qq/\$hello: "$hello"\n/;
