#!/usr/bin/perl -w

$lineno = 1; $count=0;

while (<>){
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
