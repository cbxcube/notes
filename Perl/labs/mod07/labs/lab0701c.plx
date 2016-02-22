#!/usr/bin/perl -w

$lineno = 1; $count=0;
$filename = $ARGV[0];

open(IN, $filename) || die("Open failed: $!\n");

while (<IN>){
  printf "%3s ", $lineno;
  print $_;

  $lineno++;

  if ($count < 23){
    $count++;

  }else{
    $_ = <STDIN>;
    $count=0;
  }
}
