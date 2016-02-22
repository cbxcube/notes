#!/usr/bin/perl -w

@lines = <DATA>; # Slurp <DATA>

print "The names stored in this file are:\n";

foreach $line (@lines){
  print $line;
}

print "----- EOF ----\n";

__END__
Hans Schmidt
Rafaela Savore
France Roux
Jane Brown
