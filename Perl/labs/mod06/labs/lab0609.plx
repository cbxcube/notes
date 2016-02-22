#!/usr/bin/perl -w

# Conversion of date format
$date = "Tue Aug 13 15:35:23 MET DST 2000" ;

# We need something, that receives 'AUG' and returns '8'.
%month = qw (Jan 1 Feb 2 Mar 3 Apr 4 May 5 Jun 6 
             Jul 7 Aug 8 Sep 9 Oct 10 Nov 11 Dec 12) ;

# Extracting interesting parts
$date =~ /(.*) (.*) (.*) (\d\d):(\d\d):\d\d (.*) (.*)/ ;

$newdate = "Date: $3.$month{$2}.$7  Time: $4:$5" ;
print "$newdate \n" ;
