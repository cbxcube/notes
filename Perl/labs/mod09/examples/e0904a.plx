#!/usr/bin/perl -w

 $file = "temp.plx";
 if (-r $file and -w _){
    print "The file $file is readable and writeable.\n";}


 use 5.010;
 if (-r -w $file){
    say "The file $file is readable and writeable."}
