#!/usr/bin/perl -w

$ANSWER = "";
while ($ANSWER ne "QQ") {
#print "Enter a letter (\"QQ\" to quit): ";
print "Enter a an ASCII value (\"QQ\" to quit): ";
chomp($ANSWER = <STDIN>);

#$ASCII = chr($ANSWER);
#$DECIMAL = ord($ANSWER);
$DECIMAL = $ANSWER;

last if $ANSWER eq "QQ";

#  if ($ANSWER ne "QQ" ) {
    print "Value  Letter\n";
    for ($i=$DECIMAL; $i<=127; $i++) {
	$ASC = chr($i);
	print "$i\t$ASC\n";
	
#    }
  }
}
