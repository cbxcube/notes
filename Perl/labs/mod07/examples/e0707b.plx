#!/usr/bin/perl -w 

open FILE, "hashfile.txt" or die "Open failed: $!\n";

while (<FILE>){
  
  chomp; 
  ($key, $value) = split(/::/, $_);
  $hash1{$key} = $value;
 
}

for (keys %hash1) {
  print "$_ --> $hash1{$_}\n";
}

print "----- EOF ----\n";

close FILE;
