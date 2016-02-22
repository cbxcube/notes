#!/usr/bin/perl -w

hello();
&hello();
&hello;
hello;

sub hello{
  print "Hello World!\n";
}
