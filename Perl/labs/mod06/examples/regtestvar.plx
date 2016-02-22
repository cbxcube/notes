#!/usr/bin/perl
print "Enter pattern: ";
chomp($search=<STDIN>);
print "Using Regex: /$search/\n";
print "Results:\n| ";
while (<>){
  if (/$search/){
    chomp;
    print "$_ | ";
  }
}
print "\n";
