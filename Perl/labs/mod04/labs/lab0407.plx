#!/usr/bin/perl -w

# Sort ascending and descending
print "Enter a list of numbers: ";
chomp(@input=<STDIN>);

@asort = sort {$a <=> $b} @input;
@dsort = sort {$b <=> $a} @input;

$istr = join("---",@input);
$astr = join("---",@asort);
$dstr = join("---",@dsort);

print "Original list: $istr\n";
print "Ascending sort: $astr\n";
print "Descending sort: $dstr\n";
