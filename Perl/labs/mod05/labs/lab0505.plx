#!/usr/bin/perl -w

# Get a list of all processes on this system
@pslist = qx/ps -ef/;

# Remove the header line
shift @pslist;

foreach $line (@pslist){

  @splitline = split(" ",$line); 
  $count{$splitline[0]}++; # Count user names 

}

foreach $user (sort keys (%count)){

  print "User $user owns $count{$user} processes \n";

}
