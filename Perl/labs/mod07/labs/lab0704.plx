#!/usr/bin/perl -w

open(ACRO, "acronyms.dat") || die("Open failed: $!\n");

# Split up each line into acronym and description
while (<ACRO>){
  chomp;
  ($k, $v) = split /##/;
  $acro{$k} = $v;
}

close ACRO;

while (1){
  print "Please enter an acronym: ";
  chomp($input=<STDIN>);
  $input = uc($input);

  last if ($input eq "QUIT");

  if ($input eq "ALL"){
    print "All Acronyms in our db\n";
    print "-"x30,"\n";
    foreach $key (sort keys %acro){
      print "$key: ";
      print "$acro{$key}\n";  
    }
    print "-"x30,"\n\n";
    next;
  }

  if (exists($acro{$input})) {
    print "$input: ";
    print "$acro{$input}\n\n";
  }
  else
  {
    print "Acronym not found. Try again or 'quit'\n";
  }
}
