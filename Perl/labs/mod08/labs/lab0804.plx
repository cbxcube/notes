#!/usr/bin/perl -w 
use strict;
print "Enter a list of numbers one per line.\n";
print "Press ctrl-d when you are finished\n";
my @in = <STDIN> ;
chomp @in;

# Call subroutines.
my $mean = mean(@in) ; # One value returned
my($min, $max) = minmax(@in) ; # Two values returned
output($mean, $min, $max) ; # No value returned

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
