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
$answer = uc($answer);

if ($answer eq "C"){
  print "Correct, King Tut is buried in King Tut's tomb.\n ";
}

elsif ($answer eq "A") {
  print "Elvis lives in Michigan silly!\n";
}

elsif ($answer eq "B") {
  print "Kilroy visited the tomb, but he's not there.\n";
}

elsif ($answer eq "D") {
  print "King Arthur is buried in England.\n";
}

else {
  print "Incorrect answer, try A, B, C, or D\n";
}
