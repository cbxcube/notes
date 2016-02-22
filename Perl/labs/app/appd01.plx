#!/usr/bin/perl -w
# Count # of directories

foreach $_ (@ARGV) {
  
  $num = <$_/*>;
  print "directory $_ contains $num files.\n" ;

}
