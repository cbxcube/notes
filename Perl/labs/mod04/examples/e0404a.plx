#!/usr/bin/perl -w

@arr = ("mercury", "venus", "earth", "mars");

$a = $arr[-1] ;
$b = $arr[-3] ;

$last = $#arr ;

$c = $arr[$#arr] ;

print "$a $b $c $last \n";
