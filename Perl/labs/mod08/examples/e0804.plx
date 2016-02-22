#!/usr/bin/perl -w

$name = "Larry";

$ret = myuc($name);

print "Value returned: $ret\n";

sub myuc{
  $_[0] = uc($_[0]);
  return $_[0];
}
