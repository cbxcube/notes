#!/usr/bin/perl -w

$count = 0;

print "\n";

# Change .pl files
foreach $file (<*>){
  if (-l $file){
    
    $target=readlink($file);
    print "$file -> $target\n";
    
    $count++
  }
}

print "There are $count files with symbolic links\n";
