#! /usr/bin/perl -w
# Test behavior of loop
TOP: for ($i=0; $i <= 10; $i++) {
    print "$i ";

    next TOP;

    print "Got here";
}

print "Goodbye...\n";
