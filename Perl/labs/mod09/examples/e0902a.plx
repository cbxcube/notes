#!/usr/bin/perl -w

$file = "..";

if (-d $file){
  
  print "Directory $file exists\n";
  
  $age = -M $file;
  
  print "The directory was last modified $age days ago\n";
}
