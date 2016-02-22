#!/usr/bin/perl -w

$file = "temp.pl";

if (-e $file){ 
  print "File $file exists\n";
} 
else { 
  print "Can't find $file\n";
}
