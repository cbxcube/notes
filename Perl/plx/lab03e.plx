#!/usr/bin/perl -w

$FAR = 0;
$CEL = 0;


while (1) {
print "Enter a temperature in Celsius (quit to quit): ";
chomp($CEL = <STDIN>);
last if ($CEL eq "quit");
$FAR = ((9/5) * $CEL) + 32;

print "$CEL degrees Celcius is $FAR degrees in Fahrenheit.\n";
print "It's too HOT!\n" if ($FAR > 88);
print "It's just right..\n" if ($FAR > 69 && $FAR < 88);
print "It's too damn COLD!\n" if ($FAR < 33);


#print "Enter a temperature in Fahrenheit: ";
#chomp ($FAR = <STDIN>);

#$CEL = ($FAR - 32) * (5/9);
#print "$FAR degrees in Fahrenheit is $CEL degrees in Celcius.\n";
}
