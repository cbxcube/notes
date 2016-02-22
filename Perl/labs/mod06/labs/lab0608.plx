#!/usr/bin/perl -w

print "\n";
printf ("%8s %-14s %-15s %-20s\n", "Login", "Directory", "Shell", "Comments");

while (<>){

  ($login, $gcos, $dir, $shell) = /(.*):.*:.*:.*:(.*):(.*):(.*)/;
  chomp($shell);
  
  printf ("%8s %-14s %-15s %-20s\n",$login,$dir,$shell,$gcos);
}
