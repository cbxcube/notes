#!/usr/bin/perl -w

$TOTCOUNT=1;
$EXPR="";

print "What would you like to search for? ";
chomp($EXPR=<STDIN>);

while (<>) {
  chomp($WORD=$_);
#  if (/then/) {	#search for any word that contains "then"
#  if (/^b.*rr.*y$/) {	#search for any word that starts with b, ends with y,
			# and has "rr" anywhere in the middle
#  if (/soft|ware/) {	#search for words that contains "soft" or "ware"
if (/$EXPR/) {
    printf "%7s %-20s\n", "$TOTCOUNT", "$WORD";
    $TOTCOUNT++;
    if ($TOTCOUNT % 25 == 0) {
      print "press enter to continue...";
      $_=<STDIN>;
    }
  }
}
