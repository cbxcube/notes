#!/usr/bin/perl -w
$answer = "";

print <<end_of_text;
Who is buried in King Tut's tomb?
  A. Elvis
  B. Kilroy
  C. King Tut
  D. King Arthur

end_of_text

print "Your answer: ";
chomp($answer = <STDIN>);

if (uc($answer) eq "C"){
  print "Correct, King Tut is buried in King Tut's tomb.\n ";
}
