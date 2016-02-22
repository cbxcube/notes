#! /usr/bin/perl
# Test behavior of loop
for ($i=0 ; $i <= 10 ; $i++) {
    print "$i ";
    redo;
    print $i*10," ";
}

print "Goodbye...\n";
