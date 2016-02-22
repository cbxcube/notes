#!/usr/bin/perl

#Get target dir from command line
$dir = $ARGV[0];

# Test to see if the directory exists
chdir($dir) || die "Cannot cd to $dir : \n $! \n";

#Walk through glob results
foreach $file (sort <\.* *>){
  print $file,"\n";
}
print "\n";
