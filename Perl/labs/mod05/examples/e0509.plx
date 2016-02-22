#!/usr/bin/perl -w

%fflint = ( "name" => "flintstone", 
            "fname" => "fred",
            "job" => "stonecutter");
            
%rev = reverse(%fflint); # Swap keys and values
# Now swapped hash is in %rev						

foreach $value (sort keys(%rev) ){

	print "$value <-- $rev{$value}\n";

}
