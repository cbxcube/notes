#!/usr/bin/perl -w

%fflint = ( "name" => "flintstone", 
            "fname" => "fred",
            "job" => "stonecutter");

while ( ($k,$v) = each (%fflint) ) {	 

	print "$k --> $v \n";	

}
