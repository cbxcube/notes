#!/usr/bin/perl -w

$name = "Larry";
print "\$name before sub = $name\n";

$ret = myuc($name);

print "\$name after sub = $name\n";
print "Value returned: $ret\n";

sub myuc{
  $_[0] = uc($_[0]);
  return $_[0];
}
