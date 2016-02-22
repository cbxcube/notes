#!/usr/bin/perl -w
# Number guesser
$max = 100;

srand; # Intialize random number generator
$num = int(rand $max) + 1;

print "I have picked a number between 1 and $max.\n";

while (1){
  print "Guess ",++$guessNum,": ";
  chomp($guess=<STDIN>);
  
  print "Higher!\n" if $guess < $num;
  print "Lower!\n" if $guess > $num;
  last if $guess == $num; 
}
print "Right! You needed $guessNum guesses to guess $num\n"; 
