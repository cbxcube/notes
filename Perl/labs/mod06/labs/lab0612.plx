#!/usr/bin/perl -w
use 5.010;

@list = qw/tom dick harry peter paul mary jane/, ;
say"Please enter a name.";
chomp($name = <STDIN>);
$lname = lc $name;
if ($lname ~~ @list){
    say "$name is on the list.";
} else{
    say "$name is not on the list";
    say "Would you like to add the name to the list? (Y or N)";
    chomp($resp = <STDIN>);
    if (uc($resp) ~~ /Y/){
      push @list, $lname;
    }
}

say "Here is the list:\n@list";
