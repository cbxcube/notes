#!/usr/bin/perl -w 

@arra = ("mercury", "venus", "earth", "mars");

@slicea = @arra[1, 3];
@sliceb = @arra[0..2];

print "a: @slicea\n";
print "b: @sliceb\n";

@arra[0, 1, 3] = ("jupiter", "neptune", "pluto");
print "\@arra: @arra\n";

# Swap elements 1 and 3 
@arra[1, 3] = @arra[3, 1];
print "\@arra: @arra\n";
