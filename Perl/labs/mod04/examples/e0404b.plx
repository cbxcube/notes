#!/usr/bin/perl -w

# Adding elements
@arr = ("mercury", "venus", "earth", "mars");

@arr = (@arr, "jupiter"); # Add to End

@arr = ("sun",@arr); # Add to front

print "\@arr = @arr \n";
