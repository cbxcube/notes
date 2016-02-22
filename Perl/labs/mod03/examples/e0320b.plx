#! /usr/bin/perl -w
$i = 1;

TOP: {
  print "$i ";
  $i++;
  last TOP if ($i == 10);
  redo TOP;
  
  print "Got here";
}

print "Goodbye...\n";
