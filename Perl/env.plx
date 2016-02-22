#!/usr/bin/perl -w
#%ENV is a built in hash.  It contains all of the set environmental variables and their values.
#$ENV is used instead of %ENV when it's used as a scalar variable

foreach $VAR (sort keys %ENV) {		#for every key that's pulled out of %ENV
  print "$VAR: $ENV{$VAR}\n";		#displey the the key and then the value associated with that key in the hash $ENV
}
