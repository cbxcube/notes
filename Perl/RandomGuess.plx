#!/usr/bin/perl
#
$max = 100;

$num = int(rand $max) + 1;

print "I have picked a number between 1 and $max.\n";

while (1) {
	print "Guess ",++$guessNum,": ";
	chomp ($guess=<STDIN>);

	print "Higher!\n" if $guess < $num;
	print "Lower!\n" if $guess > $num;
	last if $guess == $num;
}
print "Right! You needed $guessNum guesses to guess $num!\n";
