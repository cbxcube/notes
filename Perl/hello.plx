#!/usr/bin/perl -w
#

#$count=0;
$num=0;
system("clear");		#Clear screen

print "Enter the number of times to display: ";
chomp($num = <STDIN>);

#while ( $count <= $num ) {
#	print "Hello World! ";
#	$count++;
#}
#print "\n";
#

for ($i=1;$i<=$num;$i++) {
	print "Hello World! ";
}
print "\n";
