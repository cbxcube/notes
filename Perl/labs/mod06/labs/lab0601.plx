#!/usr/bin/perl -w

$count=0;

while (<>){
  print $_;

  if ($count < 23){
    $count++;

  }else{
    $_ = <STDIN>;
    $count=0;
  }
}
