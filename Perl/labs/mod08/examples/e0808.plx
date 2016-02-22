#!/usr/bin/perl -w
# Scope and my
$hero = "Batman";

print "\$hero in main: $hero\n";

{
  my $hero = "Robin";
  print "\$hero in block1: $hero\n";
}

{
  my $hero = "Batgirl";
  print "\$hero in block2: $hero\n";
}

print "\$hero in main: $hero\n";
