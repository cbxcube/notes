#!/usr/bin/perl -w

$string = "Long, long ago in a galaxy far, far away";

if ($string =~ /(f.*?r)/){
  print "\$1 = $1\n";
}
