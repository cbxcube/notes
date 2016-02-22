#!/usr/bin/perl -w

$sentence="";
@words="";
$i=0;

print "Enter a sentence: ";
chomp($sentence=<STDIN>);

@words=split(' ', $sentence);

foreach (@words){
	print "\$words[$i] = $_\n";
	$i++;
}

for ($i=0;$i<=$#words;$i++) {
	print "\$words[$i] = $words[$i]\n";
}
