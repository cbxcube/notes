#!/usr/bin/perl -w

# Advanced Perl ls
$bytes = 0;

@files = `ls -l`;
shift @files; # Remove first line of ls

$count = @files;

# Bytes are 4th element, name 8th
foreach $fileline (@files){
  
  @line = split (' ', $fileline); # Split Line
  $bytes = $bytes + $line[4]; # Sum bytes
  push(@fileout,$line[8]); # Add filename to file out
}

print "@fileout\n";
print "$count files or directories\n";
print "$bytes bytes\n";
