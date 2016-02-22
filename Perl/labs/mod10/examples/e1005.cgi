#!/usr/bin/perl -w

use CGI(":standard");
print header;
print start_html("Database search results");
print h2("Search Results");
print h4("Randal Schwartz: Learning Perl");
print br;
print h4("Larry Wall: Programming Perl");
print h5("Wed Aug 02 12:56:03 2000");
print end_html;
