#!/usr/bin/perl -w

print "The servers currently have the following load. \n";

foreach $host (@ARGV){
  open(USERS, "finger \@$host |") || die("Open failed: $!\n");

  @users = <USERS>;

  shift(@users);
  shift(@users);

  $count = @users;
  
  print $host," has ",$count," users \n";

  close (USERS);
}
