#!/usr/bin/perl -w

$ret = names();
print "Returned value: $ret\n";

sub names{
  print "Larry\n";
  print "Moe\n";
  return "Joe";
  print "Curly\n";
}
