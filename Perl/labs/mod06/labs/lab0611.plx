#!/usr/bin/perl -w

print "Enter your search string: ";
chomp($search=<STDIN>);

foreach $host (@ARGV){
  print "For $host, the following lines match:\n";
  
  @list1 = qx/finger \@$host/;
  
  print $list1[0];
  print $list1[1];
  
  foreach $line (@list1){
    
    if ($line =~ /$search/){
        print $line;
    }
  }
}
