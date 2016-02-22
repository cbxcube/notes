#!/usr/bin/perl -w
#

$bet=0;
$cash=0;
$roll=0;
$dice1=0;
$dice2=0;
$keeprolling="";
$quit1="";


print "Welcome to craps!!\n";
print "How much cash are you bringing to the table? ";
chomp ($cash=<STDIN>);

while (1) {


print "How much do you wish to bet? ";
chomp($bet = <STDIN>);
$cash=$cash-$bet;

if ($bet > $cash) {
	
	print "You do not have enough cash for that bet.\n";
	print "Do you want to walk away from the table? (y/n) ";
	chomp($quit1 = <STDIN>);
	$quit1=lc($quit1);
	last if $quit1 eq "y";

} else {
	$dice1=int(rand 6) + 1;
	$dice2=int(rand 6) + 1;

	print "You rolled a $dice1 and a $dice2.\n";
	
	$roll=$dice1 + $dice2;	

	if ($roll == 2 || $roll == 12 ) {
		print "SNAKE EYES!!\n" if ($dice1==1 && $dice2==1);
		print "You lose.  Better luck next roll... enter to continue\n";
		$_=<STDIN>;
		
	} elsif ($roll == 7 || $roll == 11) {
		print "WINNER!!\n";
		print "You're up another $bet.\n";
		$cash=$cash+($bet*2);
	} else {
		if ($dice1==$dice2) {
			print "Natural $roll. Not a winner. Keep rolling.\n";
		} else {
			print "you rolled a $roll.  Not a winner. Keep rolling.\n";
		}
		$cash=$cash+$bet;
	}
}


print "Your total cash is: $cash\n";
print "Do you want to keep rolling? (y/n) ";
chomp($keeprolling=<STDIN>);
$keeprolling=lc($keeprolling);
last if $keeprolling eq "n"
}
