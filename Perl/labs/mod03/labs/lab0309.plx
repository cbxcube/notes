#!/usr/bin/perl -w
$word = "";

while ($word ne "quit") {
  print "Enter a word (or 'quit' to leave) ";
  $word = <STDIN>;
  chomp($word) ;

  $word = lc($word) ; # Make lowercase
  last if ($word eq "quit"); # Exit if quit

  if ($word eq reverse($word)) {
    print "$word is a Palindrome!!\n\n";
  }
  else { print "Not a Palindrome-----\n\n"; }
}
