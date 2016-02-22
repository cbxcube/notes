#!/usr/bin/perl -w

%fflint = ( "name" => "flintstone", 
            "fname" => "fred",
            "job" => "stonecutter");

($k, $v) = each(%fflint); # Return 1 key and value

print "The first key/value pair is: $k / $v.\n";
