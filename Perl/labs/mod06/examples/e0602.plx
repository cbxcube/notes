#!/usr/bin/perl -w

#print ASCII Table
printf ("%-12s %8s %10s\n", "Character", "ASCII", "Dec ASCII");

$letnum = ord ("a"); # Get ASCII number for "a"

for ($x = $letnum; $x <= ($letnum + 10); $x++){

  printf ("%-12s %8d %10.2f\n", chr($x), $x, $x);

}
