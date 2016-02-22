#!/usr/bin/perl -w

%fflint = ( "name" => "flintstone",
            "fname" => "fred",
            "job" => "stonecutter");

@k = keys (%fflint); # Return Keys
$k = keys (%fflint); # Return Number of Keys

print "Keys = @k\n";
print "There are $k keys\n";
