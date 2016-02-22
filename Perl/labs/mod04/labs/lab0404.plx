#!/usr/bin/perl -w

# Reverse array from keyboard

print "Enter a list of numbers: ";
chomp(@input=<STDIN>);

print "The array in order is: @input \n";

@input = reverse(@input); # Reverse Array

print "The array in reverse order: @input \n";
