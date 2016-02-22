#!/usr/bin/perl -w

%fflint = ( "name" => "flintstone", 
            "fname" => "fred",
            "job" => "stonecutter");

@v = values(%fflint); # Return values
$v = values(%fflint); # Return number of values

print "Values = @v\n";
print "There are $v values in the hash\n";
