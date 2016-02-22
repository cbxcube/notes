#!/usr/bin/perl -w

# Sort ascending and descending
print "Enter a list of numbers: ";
chomp(@input=<STDIN>);

@asort = sort {$a <=> $b} @input;
@dsort = sort {$b <=> $a} @input;

print "Original list: @input\n";
print "Ascending sort: @asort\n";
print "Descending sort: @dsort\n";
