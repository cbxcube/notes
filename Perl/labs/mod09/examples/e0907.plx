#!/usr/bin/perl -w

$dir = $ARGV[0];

opendir(DH, $dir) || die("Open failed: $!\n");

foreach $_ (sort readdir(DH)){
  
  if ($_ =~ /.pl/){
    print "$_ \n";
  }
  
}

closedir(DH);
