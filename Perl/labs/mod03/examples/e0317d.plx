#! /usr/bin/perl
# Test behavior of loop
$i=0;
while ($i <= 10) {
    print "$i ";
    next;
#    redo;
#    last;
    print $i*10," ";
}continue{
  $i++;
  print "| ";
}
print "Goodbye...\n";
