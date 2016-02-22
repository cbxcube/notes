#!/usr/bin/perl -w

%fflint = ( "name" => "flintstone", 
            "fname" => "fred",
            "job" => "stonecutter");

undef $fflint{"name"}; # Value now undef

delete $fflint{"job"}; # Job no longer in hash

foreach $k ( keys(%fflint) ) {				 

	print "$k --> $fflint{$k} \n";						

}
