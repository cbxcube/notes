#!/usr/bin/perl -w

%fflint = ( "name" => "flintstone", 
            "fname" => "fred",
            "job" => "stonecutter");

# Use hash slice to replace fred with wilma
@fflint{"fname", "job"} = ("wilma", "secretary");

foreach $k ( keys (%fflint) ) {				 
  
	print "$k --> $fflint{$k}\n";						

}
