#!/usr/bin/perl -w

@arr = ("mercury", "venus", "earth", "mars");

$length1 = $#arr + 1; # Array length

$length2 = @arr; # Returns Array length in scalar context

# Two numbers should be the same
print "$length1 $length2\n";
