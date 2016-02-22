#!/usr/bin/perl -w

$bytes = 0; $count = 0;

open LS,"ls -l |"; # Open ls as filehandle

$_ = <LS>; # Remove first line

while (<LS>) {
  print; # Print Current line

  @line = split ' ';    # Split, remove whitespace
  $bytes = $bytes + $line[4]; # Get number of bytes
  $count++;                   # Count number of files/dirs
}
close LS;

print "$count files or dirs using $bytes bytes\n"
