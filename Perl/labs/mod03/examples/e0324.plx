#!/usr/bin/perl -w

use 5.010;

say "Enter a number: ";
chomp($a = <STDIN>);
 
given ( $a ) {

   when ($a % 2 == 0){ say "multiple of 2 selected" ; continue }
   when ($a % 3 == 0){ say "multiple of 3 selected" ; continue  }
   when ($a % 5 == 0){ say "multiple of 5 selected" }
   #default { say "Not a multiple of 2, 3, or 5" }
}

 say "End of given-when search";
