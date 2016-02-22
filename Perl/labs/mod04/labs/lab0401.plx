#!/usr/bin/perl -w

@arr1 = qw(mercury venus earth);

# Print Arr1
print "Array 1: @arr1 \n";

#print length
$length = @arr1;
print "Length: $length\n";

# Reverse with slices
@arr1[0, 1, 2] = @arr1[2, 1, 0];
print "Reversed: @arr1\n";

# Add mars
@arr1 = ("mars", @arr1);
print "Array 1: @arr1"," \n";

#print length
$length = $#arr1 + 1;
print "Length: $length\n";
