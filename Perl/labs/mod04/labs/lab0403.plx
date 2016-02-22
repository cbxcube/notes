#!/usr/bin/perl -w 

@letterlist = qw(a b c d e f g a b c d e);
@counter = (0,0,0,0);
$len = @letterlist;

foreach $_ (@letterlist){
  SWITCH:{
    
    if ($_ eq "a") { $counter[0]++; last SWITCH;};
    if ($_ eq "b") { $counter[1]++; last SWITCH;};
    if ($_ eq "c") { $counter[2]++; last SWITCH;};
    $counter[3]++;
    
  } # End switch 
} # end foreach

print "For this list: @letterlist\n"; 
print "$counter[0] a's.\n";
print "$counter[1] b's.\n";
print "$counter[2] c's.\n";
print "$counter[3] others.\n";
print "$len characters in the array.\n";
print "Last character is: ",($letterlist[$len - 1]),"\n";
