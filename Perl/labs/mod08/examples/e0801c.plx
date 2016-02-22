#!/usr/bin/perl -w

sub hello;

hello();
&hello();
&hello;
hello;

sub hello{
  print "Hello World!\n";
}
