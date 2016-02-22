#!/usr/bin/perl -w

foreach $var (sort keys %ENV) { 

  print "$var: $ENV{$var} \n" ;

}
