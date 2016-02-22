#!/usr/bin/perl -w 

$lineno = 0; $count = 0;
while (<>){
  
  if (/soft|ware/){
    $lineno++;
  
    printf "%3s ", $lineno;
    print $_;

    if ($count < 23){
      $count++;
    }else{
      $_ = <STDIN>;
      $count = 0;
   }
  }
}
if ($lineno == 0){
  print "Sorry, no matches!\n";
}

