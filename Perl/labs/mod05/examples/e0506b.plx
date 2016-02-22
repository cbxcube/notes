#!/usr/bin/perl -w

%fflint = ( "name" => "flintstone", 
            "fname" => "fred",
            "job" => "stonecutter");

foreach ( keys (%fflint) ) {				 

	print "$_ --> $fflint{$_}\n";						

}
