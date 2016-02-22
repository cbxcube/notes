#!/usr/bin/perl -w

print "\nPermission Tester\n\n";

foreach $file (@ARGV){
  if (-e $file){
    print "Permissions and rights to $file: ";
    if (-R _ ) {print "read ";}
    if (-W _ ) {print "write ";}
    if (-x _ ) {print "execute ";}
    if (-o _ ) {print "owner ";}
    print "\n";
  }
  else {
    print "File $file does not exist\n";
  }
}
print "\n";
