#!/usr/bin/perl -w

%fflint = ( "name" => "flintstone", 
            "fname" => "fred",
            "lname" => "flintstone",
            "job" => "stonecutter") ;

foreach $key (sort{ $fflint{$a} cmp $fflint{$b} } keys(%fflint)){

	print "$key => $fflint{$key} \n";

}
