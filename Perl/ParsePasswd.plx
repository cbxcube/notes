#!/usr/bin/perl -w

print "\n";
printf "%8s %-14s %-15s %-20s\n", "Login", "Directory", "Shell", "Comments";

#@all=`cat /etc/passwd`;

#foreach (@all) {
while (<>) {
##  $_ =~ /(.*):.*:.*:.*:(.*):(.*):(.*)/;
##  ($login, $gcos, $dir, $shell) = /(.*):.*:.*:.*:(.*):(.*):(.*)/;
  @NEWARR = /(.*):.*:.*:.*:(.*):(.*):(.*)/;
  chomp(@NEWARR);

##  $login = $1;
##  $dir = $2;
##  $shell = $4;
##  $gcos = $3;
 
##  chomp($shell);

##  printf "%8s %-14s %-15s %-20s\n", $login, $dir, $shell, $gcos;
  printf "%8s %-14s %-15s %-20s\n", $NEWARR[0], $NEWARR[2], $NEWARR[3], $NEWARR[1];
}
