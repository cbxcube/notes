#!/usr/bin/perl -w

$file = "address.db" ;

print "Last name:  "; $name = <STDIN>;
print "First name: "; $fname = <STDIN>;
print "Address:    "; $addr = <STDIN>;
print "Phone:      "; $phone = <STDIN>;
chomp ($name, $fname, $addr, $phone);

# Join parts together and save into file.
$v = "$name##$fname##$addr##$phone";

open(OUT, ">>$file") || die("Open failed: $!\n");
print OUT "$name---$v\n" ;
  
close OUT ;
  
print "$name added\n";
