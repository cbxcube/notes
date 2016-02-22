#!/usr/bin/perl -w

# Define using => Operator
%fflint = ( "name" => "flintstone", 
            "fname" => "fred",
            "job" => "stonecutter");

# Print Elements
print qq/name: $fflint{name}\n/;
print "fname: $fflint{fname}\n";
print "job: $fflint{job}\n";
