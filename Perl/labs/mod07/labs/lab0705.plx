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

# Enter a new record. 
if ($opt eq "new") {
  print "Last name:  " ; $name = <STDIN> ;
  print "First name: " ; $fname = <STDIN> ;
  print "Address:    " ; $addr = <STDIN> ;
  print "Phone:      " ; $phone = <STDIN> ;
  chomp ($name, $fname, $addr, $phone) ;

  # Join parts together and save into file.
  $v = "$name##$fname##$addr##$phone" ;

  open OUT, ">>$file" ;
  print OUT "$name---$v\n" ;
  close OUT ;
}
# Display record of specified key.
else {
   if (defined($data{$opt})) {
     ($name, $fname, $addr, $phone) = split (/##/, $data{$opt}) ;
     print "Name:    $name, $fname \n" ;
     print "Address: $addr \n" ; 
     print "Phone:   $phone \n" ;
   }
   else {
     print "No address available. \n" ;
   }
}
