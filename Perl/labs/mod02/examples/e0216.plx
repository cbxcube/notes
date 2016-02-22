#!/usr/bin/perl
print "Please enter 3 numbers separated by commas: ";

# Get number
chomp($line=<STDIN>);

# Get location of the two commas
$first = index($line,",");
$second = rindex($line,",");

# Split 3 numbers out
$a = substr($line,0,$first);
$b = substr($line,($first+1),(($second-1)-$first));
$c = substr($line,$second+1);

# Print out Numbers, sum and product
print "$a, $b, and $c summed equals ",($a+$b+$c),"\n";
print "$a, $b, and $c multiplied equals ",($a*$b*$c),"\n";

