#!/usr/bin/perl -w

use 5.010;

use CGI;               # the object will be able to access all 
		           # of the methods.  No need to import them

$worker = CGI->new();  # create the object

say $worker->header;   # have the object call the methods

say $worker->start_html("Database search results");
say $worker->h2("Search Results");
say $worker->h4("Randal Schwartz: Learning Perl");
say $worker->br();
say $worker->h4("Larry Wall: Programming Perl");
say $worker->h5("Wed Aug 02 12:56:03 2010");
say $worker->end_html();
