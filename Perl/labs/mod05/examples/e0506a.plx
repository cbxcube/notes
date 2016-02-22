#!/usr/bin/perl -w

%fflint = ( "name" => "flintstone", 
            "fname" => "fred",
            "job" => "stonecutter") ;

foreach $k ( keys (%fflint) ) {				 

	print "$k --> $fflint{$k}\n";						

}
