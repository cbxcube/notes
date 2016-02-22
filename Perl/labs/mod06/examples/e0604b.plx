#!/usr/bin/perl -w

while (<>) {
  if ($_ =~ /ab/) { # Search $_ for ab
    print "$_"; # Print lines that include ab
  }
}
