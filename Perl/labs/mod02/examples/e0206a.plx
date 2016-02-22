#!/usr/bin/perl -w

$a = (7 < 50);      # true, numeric comparison
$b = ("7" < "50");  # true, still a numeric comparison
print "\$a = $a \$b = $b\n";

$c = ("berlin" lt "bonn"); # true, string comparison
$d = ("7" lt "50");        # false, string comparison
print "\$c = $c \$d = $d\n";
