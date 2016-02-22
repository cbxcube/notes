#!/usr/bin/perl -w 

@arra = ("mercury", "venus", "earth", "mars");
@arrb = ("jupiter", "saturn");

@arrc = ("sun", @arra, @arrb, "uranus");
print "@arrc \n";
