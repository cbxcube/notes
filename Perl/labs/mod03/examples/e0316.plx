#!/usr/bin/perl -w
$a = "Hello";
$b = 1;

print "$a World!\n" if  ($a eq "Hello");
print $b++,"\n" until ($b == 6);
