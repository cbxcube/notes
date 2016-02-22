#!/usr/bin/perl -w

$ANS="";
$LCANS="";
$REVANS="";
while (1) {
print "Enter a word (or \'quit\' to leave): ";
chomp($ANS = <STDIN>);

#$LCANS=lc($ANS);
#$REVANS=reverse($LCANS);
$word=lc($ANS);

	last if ($ANS eq "quit");
	print "$ANS is a Palindrome!!\n" if ($word eq reverse($word));
	print "$ANS is not a Palindrome!!\n" if ($word ne reverse($word));
}
