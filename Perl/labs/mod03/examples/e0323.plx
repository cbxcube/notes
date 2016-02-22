#!/usr/bin/perl -w

use 5.010;

say "Enter a number from 1 to 3: ";
chomp($a = <STDIN>);
 
given ( $a ) {

   when ($a == 1){ say "1 selected" ;  }
   when ($a == 2){ say "2 selected" ;  }
   when ($a == 3){ say "3 selected" ; }
   default { say "None of the above" ; }
}

 say "End of switch";
