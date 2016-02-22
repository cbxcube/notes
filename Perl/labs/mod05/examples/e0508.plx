#!/usr/bin/perl -w

%fflint = ( "name" => "flintstone", 
            "fname" => "fred",
            "job" => "stonecutter");

foreach $key (sort keys(%fflint) ){

	print "$key --> $fflint{$key}\n";

}
