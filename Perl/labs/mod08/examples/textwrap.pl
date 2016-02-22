#!/usr/bin/perl -w 
use strict;

use Text::Wrap;

$Text::Wrap::columns = 55 ;

my $big = "As we enter the next phase of the Internet build-out, or what we call the Net Effect, traditional business processes are being converted into more flexible models. This puts IT in the driver's seat for capitalizing on new business opportunities and lowering costs.";

print "\n";
print wrap("      ","    ",$big);
print "\n\n";
