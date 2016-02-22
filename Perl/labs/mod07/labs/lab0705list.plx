#!/usr/bin/perl -w

$file = "address.db" ;

# Reading it all database records. 
open(IN, "$file") || die("Open failed:\n$!\n");

# Split up the records into key and value.
while (<IN>){
  ($k,$v) = split (/---/,$_) ;
  $data{$k} = $v ;
}
close IN ;

foreach $_ (sort keys %data) {
  ($name, $fname, $addr, $phone) = split(/##/, $data{$_});

  print "Name:    $name, $fname \n" ;
  print "Address: $addr \n" ; 
  print "Phone:   $phone \n" ;
}
