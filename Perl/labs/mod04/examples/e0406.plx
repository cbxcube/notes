#!/usr/bin/perl -w 

@arr = ("mercury", "venus", "earth", "mars");

for ($i=0; $i<=$#arr; $i++) {
  print "Element $i contains $arr[$i]\n";
}
