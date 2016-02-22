#!/usr/bin/perl -w

while (<>) {
  /(.*):.*:.*:.*:(.*):.*:.*/;
  $login = $1; 
  $comment = $2;
  print "Login: $login  Comment:  $comment \n";
}
