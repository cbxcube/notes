#!/usr/bin/perl -w
# Count # of directories

foreach $_ (@ARGV) {
  
  @arr = <$_/*>;
  $num = @arr;
  print "directory $_ contains $num files.\n" ;

}
