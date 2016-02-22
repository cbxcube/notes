#!/usr/bin/perl -w

%fflint = ( "name" => "flintstone", 
            "fname" => "fred",
            "job" => "stonecutter" );

$fflint{"friend"} = "barney"; # Add Barney

foreach $k ( keys (%fflint) ) {				 

	print "$k --> $fflint{$k}\n";						

}
