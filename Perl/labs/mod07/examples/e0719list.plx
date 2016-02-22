#!/usr/bin/perl -w

$file = "support.db";

open IN, "$file" or die "Open failed: $!\n";

while (<IN>){
  
  ($k,$v) = split(/===/, $_); # Key/data separated by ===
  $data{$k} = $v;  # Create hash
}

close IN; # Close File

print "Open Problems\n";
print "="x65,"\n";

foreach $key (sort keys %data){ # Print DB
  ($name, $dept, $sev, $prob) = split (/--/, $data{$key});
  print "First Name: $name \n";
  print "Department: $dept \n";
  print "Severity:   $sev\n";
  print "Problem:    $prob\n" ;
  print "-"x65,"\n";
}
