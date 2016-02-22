#!/usr/bin/perl -w

$ANSWER="";

while ($ANSWER ne "Q") {
print <<END_OF_MENU;
Who is buried in King Tut's tomb?
  A. Elvis
  B. Kilroy
  C. King Tut
  D. King Arthur
  Q. quit

Your answer:
END_OF_MENU

chomp($ANSWER = <STDIN>);
$ANSWER = uc($ANSWER);

if ($ANSWER eq "C") {
	print "Correct, King Tut is buried in King Tut's tomb.\n";
  } elsif ($ANSWER eq "A") {
	print "Incorrect! Elvis is on Omicron Persei 8.  Try again...\n";
  } elsif ($ANSWER eq "B") {
	print "WRONG! Kilroy was sunk in the South Pacific!! Try again...\n";
  } elsif ($ANSWER eq "D") {
	print "What the hell are you drinking? King Arthur is buried in England! Try again..\n";
  } elsif ($ANSWER eq "Q") {
	print "exiting...\n";
  } else {
	print "Incorrect! Please answer \"A\", \"B\", \"C\", \"D\", or \"Q\" to quit.\n";
  }
}
