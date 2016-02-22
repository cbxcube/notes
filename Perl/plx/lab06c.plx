#!/usr/bin/perl -w


#Login Directory     Shell           Comments
print "\n";
printf "%8s %-14s %-15s %-20s\n", "Login", "Directory", "Shell", "Comments";

@all=`cat /etc/passwd`;
foreach $_ (@all) {
  
  $_ =~ /(.*):.*:.*:.*:(.*):(.*):(.*)/;
  $login = $1;
  $dir = $3;
  $shell = $4;
  $gcos = $2;

  chomp $shell;

  printf "%8s %-14s %-15s %-20s\n", $login, $dir, $shell, $gcos;
}
