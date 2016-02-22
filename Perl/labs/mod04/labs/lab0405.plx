#!/usr/bin/perl -w

# Reverse array from keyboard
print "Enter a list of numbers: ";
chomp(@input=<STDIN>);

@copy = @input;

print "The array in order is: @input \n";

print "The array in reverse order: ";

print pop(@copy)," " while (@copy > 0);
print "\n";
