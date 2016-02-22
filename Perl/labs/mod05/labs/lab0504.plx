#!/usr/bin/perl -w

print "Enter a list of words (Ctrl-d to end list):";

@wordlist=<STDIN>;
chomp(@wordlist);

foreach $word (@wordlist){
  $wordhash{$word}++; # count each instance
}

print "Here are the words you entered:\n";

foreach $word (sort keys(%wordhash)){
  print "\"$word\" occured $wordhash{$word} times. \n";
}
