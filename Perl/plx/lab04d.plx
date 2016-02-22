#!/usr/bin/perl -w

@numbers="";

print "Enter a list of numbers: \n";
chomp(@numbers = <STDIN>);

@rev_nums=reverse(@numbers);

@asort=sort{ $a <=> $a } @numbers;
@dsort=sort{ $b <=> $a } @numbers;

$" = "--";

print "The array in order is: @numbers\n";
print "The array in reverse order is: @rev_nums\n";

print "Ascending sort: @asort\n";
print "Descending sort: @dsort\n";
