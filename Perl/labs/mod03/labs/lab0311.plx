#!/usr/bin/perl -w

use 5.010;
$output="";
say "Enter a number: ";
chomp($a = <STDIN>);
 
given ( $a ) {

   when ($a % 3 == 0){ $output .= " foo"; continue }
   when ($a % 5 == 0){ $output .= " bar" ; continue }
   when ($a % 7 == 0){ $output .= " baz" }
}
if (!$output) {$output = "Not a multiple of 3, 5, or 7";}
say "$output";
