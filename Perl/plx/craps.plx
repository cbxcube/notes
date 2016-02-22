#!/usr/bin/perl -w

$BET="";
$CASH="";

print "How much total money do you have? $";
chomp($CASH = <STDIN>);

print "Enter a dollar amount to bet: $";
chomp($BET = <STDIN>);

print "Here's your roll...\n\n";

$DIE1=int(rand 6) + 1;		#Die 1 has a random number between 1 and 6
$DIE2=int(rand 6) + 1;		#Die 2 has a random number between 1 and 6

$TOTALROLL=$DIE1 + $DIE2;
#print "You rolled a $DIE1 and $DIE2 ...\n"
print "You rolled a $TOTALROLL ...\n"
print "You rolled a Natural 8!\n" if ($DIE1==4 && $DIE2==4);
print "You rolled Snake Eyes!\n You lose!" if ($DIE1==1 && DIE2==1);
if ($TOTALROLL==7 || $TOTALROLL==11) {
	print "You rolled a $TOTALROLL and win double!\n"
	$WINNING=$BET*2;
	$CASH=$CASH+($WINNING);
	print "You won $WINNING!\n"
	
}


