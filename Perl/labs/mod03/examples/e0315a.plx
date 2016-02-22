#!/usr/bin/perl -w

print "Enter three words to be reversed\n";
print "Please enter the first word: ";
chomp($word1 = <STDIN>);

print "Please enter the second word: ";
chomp($word2 = <STDIN>);

print "Please enter the third word: ";
chomp($word3 = <STDIN>);

print "Here are the results:\n";

# Use foreach loop to reverse each word
foreach $word ($word1, $word2, $word3) {

  $reversed = reverse($word);
  print "$word backwards is: $reversed\n";  

}
