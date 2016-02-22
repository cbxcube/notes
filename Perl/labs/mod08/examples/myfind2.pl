#!/usr/bin/perl -w
use strict;
use File::Find ;
my $targetdir = shift @ARGV;
my $regex = shift @ARGV;
find(\&wanted,"$targetdir");
print "\n";

sub wanted {
  if (/$regex/){
    print("$File::Find::name   ");
  }
}
