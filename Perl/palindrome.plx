#!/usr/bin/perl -w
#

system("clear");

while (1) {
  print "Enter a word (or \'quit\' to leave): ";
  chomp($WORD = <STDIN>);

  $LCWORD=lc($WORD);
  $REVWORD=reverse($LCWORD);

  last if $WORD eq "quit";
  
  print "$WORD is a Palindrome!!\n" if $LCWORD eq $REVWORD ;
  print "$WORD is not a Palindrome!!\n" if $LCWORD ne $REVWORD ;

}
