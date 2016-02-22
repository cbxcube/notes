#!/usr/bin/perl -w

$count=0;
$filename = $ARGV[0];

open(IN, $filename) || die("Open failed: $!\n");

while (<IN>){
  print "$filename: $_";

  if ($count < 23){
    $count++;

  }else{
    $_ = <STDIN>;
    $count=0;
  }
}
