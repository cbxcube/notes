#!/usr/bin/perl -w

#Split String on :
$passwd = "alf:x:86:30:Alfons:/export/home/alf:/bin/ksh";

@passwd = split(/:/, $passwd, 4); 

for ($x = 0; $x <= $#passwd; $x++){
  print "Element[$x]: $passwd[$x]\n";
}
