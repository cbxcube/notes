#! /usr/bin/perl -w

$var = 'quadrangle';

$var =~ /d(.)/;     # matches dr

print "\$` $` \n";  # What's before dr
print "\$' $' \n";  # What's after dr
print "\$& $& \n";  # What matched /d(r)/
print "\$+ $+ \n";  # What matched (r)
