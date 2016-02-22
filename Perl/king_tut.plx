#!/usr/bin/perl -w
#

use 5.010;
$ANSWER="";

do {

system("clear");

print <<EOF;
Who is buried in King Tut's tomb?
  A. Elvis
  B. Kilroy
  C. King Tut
  D. King Arthur

Your answer:
EOF

  chomp($ANSWER = <STDIN>);
  $ANSWER=uc($ANSWER);
  given ($ANSWER) {
	when($ANSWER eq "C"){ say "Correct, King Tut is buried in King Tut's tomb!"; }
	when($ANSWER eq "D"){ say "King Arthur is buried in Englad somewheres... Hit enter to try again.."; $_=<STDIN>; }
	when($ANSWER eq "B"){ say "Kilroy is buried on the island of Waponie Woo... Hit enter to try again.."; $_=<STDIN>; }
	when($ANSWER eq "A"){ say "Elvis is alive and well on Omicron Persei 8... Hit enter to try again.."; $_=<STDIN>; }
  }
}  until ($ANSWER eq "C")

