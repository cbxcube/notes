#!/usr/bin/perl -w

%fflint = ( "name" => "flintstone", 
            "fname" => "fred",
            "job" => "stonecutter") ;

$fflint{friend} = "barney"; # Add barney
$fflint{animal} = undef ;   # half add dino

# Values to test for
@test = qw(name fname job friend animal wife child);

foreach $testkey (@test) {
  
  print "$testkey: ";
  print "exists " if (exists $fflint{$testkey});
  print "defined" if (defined $fflint{$testkey});
  print "\n";
  
}
