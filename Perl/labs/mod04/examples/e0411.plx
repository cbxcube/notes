#!/usr/bin/perl -w

# a two-dimensional array of 2 x 3 elements
@marr = ( [11,12,13], 
          [14,15,16]);
          
for ($i=0 ; $i<=1 ; $i++) { # row
  
  for ($j=0 ; $j<= 2 ; $j++) { # column
    print "$i,$j: $marr[$i][$j]  ";
  }
  
  print "\n" ;
}
