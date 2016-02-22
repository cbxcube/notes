#!/usr/bin/perl -w

# Search for "mississippi";
# Use backreferencing withing expression

while(<>) {
  print if /\w+i(ss)i\1/;
}
