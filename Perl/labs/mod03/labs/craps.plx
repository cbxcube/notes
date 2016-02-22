#!/usr/bin/perl -w

# Simple Craps Game script
print "\nWelcome to the Perl craps game \n";
$bet = 0;
$quit = "n";

# Outer loop controls whether another game is played our not.
do {
  if ($bet == 0) {
    print "Please enter the amount you wish to bet: ";
    chomp($bet = <STDIN>);
  }

  $gameover = "false";

  #Inner loop contrtols the current game.
  do {
    print "Here is the roll... \n";
    $dice1 = int(rand(6))+1;
    $dice2 = int(rand(6))+1;

    print "You rolled a $dice1 and a $dice2 ...\n";
    $total = $dice1 + $dice2;

    if ($total == 2 || $total == 3 || $total == 7 || $total == 11 || $total == 12){
      $gameover = "true";   

    } else {
      print "Press return to roll again.\n";
      $_ = <STDIN>;
    }
    
  } while ($gameover eq "false"); # End Inner Loop

  if ($total == 7 || $total == 11){
    $bet = $bet * 2;
    print "You have won $bet credits! Let it ride? (y/n) ";
    chomp($quit=<STDIN>);

  } 
  else {

    $bet = 0;
    print "Sorry, but you've lost. Would you like to play again? (y/n)";    
    chomp($quit=<STDIN>);

  }

}while ($quit eq "y"); # End Outer Loop

if ($bet > 0){
  print "You keep $bet credits! See you next time.\n";
} 
else {
  print "Better luck next time.\n";
}

