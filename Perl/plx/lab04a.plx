#!/usr/bin/perl -w

@arr1 = qw/mercury venus earth/;
$arr_length = @arr1;

print "Array 1: @arr1\n";
print "Length: $arr_length elements\n";

print "Reversed: ";

for ($i=0;$i<=$#arr1;$i++) {
	$NUM=$i+1;
	print "$arr1[-$NUM] ";
}
print "\n";
	
@arr1 = ("mars",@arr1);

print "Array 1: @arr1\n";
print "Length: ",$#arr1+1," elements\n";
