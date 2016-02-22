#!/usr/bin/perl -w 
# Stats Package
package Stats;

sub mean {
   my ($sum,$mean) ;
   foreach (@_) { 
     $sum += $_
   }
   $mean = $sum / ($#_+1) ;
   return $mean ; # Return one value.
}

sub minmax {
   my ($min, $max) ;
   $min = $max = $_[0] ; # Yes, this works.
   foreach (@_) {
      $min = $_ if $min >= $_ ;
      $max = $_ if $max <= $_ ;
      }
   return ($min, $max) ; # Returning two values.
}

sub output {
   my ($mean,$min,$max) = @_[0,1,2] ;
   printf "Min: %4.2f Max: %4.2f Mean: %4.2f\n",$min,$max,$mean ;
}
1;  
