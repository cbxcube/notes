#!/usr/bin/perl -w

@NUM_ARRAY="";
$TOTAL=0;
$AVERAGE=0;


print "Enter a list of numbers: \n";
chomp(@NUM_ARRAY=<STDIN>);


print "Numbers entered: @NUM_ARRAY\n";
foreach (@NUM_ARRAY) {		#get the total sum
	$TOTAL += $_;		#Add the number from the array DEFAULT to TOTAL
}
print "The total is: $TOTAL\n";		#display the total sum
$AVERAGE=$TOTAL/($#NUM_ARRAY+1);	#get the average
print "The average is: $AVERAGE\n";	#display the average
