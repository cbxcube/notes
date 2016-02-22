#!/usr/bin/perl -w

open ACRO, "acronyms.dat" or die "Open failed: $!\n";

#WWW##World Wide Web

while (<ACRO>) {
  chomp;
  ($k, $v) = split /##/;
  $acro{$k} = $v;
}

close ACRO;

while (1) {
  print "Please enter an acronym: \n"; chomp($input=<STDIN>);
  $input=uc($input);

  last if ($input eq "QUIT");

  if ($input eq "ALL") {
    print "-"x30,"\n";
    foreach $key (sort keys %acro) {
      print "$key: $acro{$key}\n";
    }
    print "-"x30,"\n\n";
    next;
  }

  if (exists($acro{$input})) {
    print "$input: ";
    print "$acro{$input}\n\n";
  } else {
    print "Acronym not found. Try again or 'quit'.\n";
  }
}
