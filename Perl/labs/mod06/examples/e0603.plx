#!/usr/bin/perl -w

$output = sprintf("%-12s %8s %10s\n", "Character", "ASCII", "Dec ASCII");
push (@out, $output);

$letnum = ord ("a"); # Get ASCII number for "a"

for ($x = $letnum; $x <= ($letnum + 10); $x++){

  $output = sprintf("%-12s %8d %10.2f\n", chr($x), $x, $x);
  push (@out, $output);

}

for (@out){
  print;
}
