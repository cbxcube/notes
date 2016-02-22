#!/usr/bin/perl -w

$string = "Error: 236 in myscript.pl"; # Error Number

# Substitute Message and print
$string =~ s/236/File not writable/; 
print $string,"\n";
