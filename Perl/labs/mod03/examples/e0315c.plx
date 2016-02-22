#!/usr/bin/perl -w
$choice = "";

print <<end_of_menu;
Please select one of the following choices:
  A. Print this
  B. Print that

Your choice:
end_of_menu
chomp ($choice = <STDIN>);
$choice = uc($choice);

if ($choice eq "A") {
  print "this\n";
}
elsif ($choice eq "B") {
  print "that\n";
}
else {
  print "Enter a or b please.\n";
}
