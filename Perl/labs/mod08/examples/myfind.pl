#!/usr/bin/perl -w 
use strict;
require "find.pl";

my $targetdir = $ARGV[0];
my $regex = $ARGV[1];


find("$targetdir");
print "\n";

sub wanted {
  if (/$regex/){
    print("$_  ");
  }
}
