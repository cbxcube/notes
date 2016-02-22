#!/usr/bin/perl -w

# Get approximate user count using finger

print "The user load for each server is:\n";

foreach $host (@ARGV){

  @users = `finger \@$host`; # finger hostname
  
  shift(@users); # Remove hostname
  shift(@users); # Remove title line
  
  $count = @users; # Count users
  
  print $host, " has ", $count, " users \n";

}
