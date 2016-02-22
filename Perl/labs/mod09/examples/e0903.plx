#!/usr/bin/perl -w

$file = $ARGV[0];

print "You have the following permissions to $file:\n";

if (-e $file){
  if (-r _ ){print "read ";}
  if (-w _ ){print "write ";}
  if (-x _ ){print "execute ";}
  if (-o _ ){print "\nYou also own this file";}  
}

print "\n";
