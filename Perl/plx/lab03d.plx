#!/usr/bin/perl -w

$FIRST = 0;
$SECOND = 0;
$THIRD = 0;

print "Please enter three numbers.\n";
print "First number: ";
chomp($FIRST = <STDIN>);
print "Second number: ";
chomp($SECOND = <STDIN>);
print "Third number: ";
chomp($THIRD = <STDIN>);

foreach $NUM ($FIRST, $SECOND, $THIRD) {
	print "The results for $NUM are:\n";
	$SQUARED = $NUM**2;
	$CUBED = $NUM**3;
	$SQROOT = sqrt($NUM);
#	print "$NUM\*\*2 = $SQUARED\n";
	print "$NUM\*\*2 = ",($NUM**2),"\n";
#	print "$NUM\*\*3 = $CUBED\n";
	print "$NUM\*\*3 = ",($NUM**3),"\n";
#	print "sqrt($NUM) = $SQROOT\n";
	print "sqrt($NUM) = ",(sqrt($NUM)),"\n";
}
