#!/usr/bin/perl -w

print "Please enter three numbers.\n";
print "First number: ";
chomp($num1 = <STDIN>);

print "Second number: ";
chomp($num2 = <STDIN>);

print "Third number: ";
chomp($num3 = <STDIN>);

foreach $num ($num1,$num2,$num3){
  print "The results for $num are: \n";
  print "$num**2 = ", ($num**2), "\n";
  print "$num**3 = ",($num**3),"\n";
  print "sqrt($num) = ",(sqrt($num)),"\n\n";
}
