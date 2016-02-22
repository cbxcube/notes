#!/usr/bin/perl -w

# Outer and Inner Loops
# Find first x * y > 6
$x = 0;

OUTER: while ($x < 10) {
  $x++;
  INNER: for($y=0; $y < 5; $y++){ 
    last OUTER  if (($x * $y) > 6);
    print "Inner: x=$x y=$y x*y=", $x*$y, "\n";
  }
  print "Outer: x=$x y=$y x*y=", $x*$y, "\n";
}
print "Jumped out.\n";
print "x = $x and y = $y \n";
print "$x * $y = ",$x*$y,"\n";
