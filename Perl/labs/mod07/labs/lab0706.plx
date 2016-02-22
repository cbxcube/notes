#!/usr/bin/perl -w

$statfile = "june.dat";

open(STAT, $statfile) || die("Open failed: $!\n"); 

@stat = <STAT> ;
chomp @stat ;
close STAT ;

# Calc mean
foreach $day (@stat) {
  $sum += $day ;
}

# Print header and mean
$mean = int($sum / ($#stat +1)) ;

print "\nStatistical Report for $statfile \n" ;
print "-" x 50 , "\n" ;
print "Mean: $mean \n\n" ;
printf ("%8s %8s %10s %10s","day","amount","diff","%diff");
print "\n\n";

# Calculating statistical values and printing them out
for ($i=0 ; $i<=$#stat ; $i++) {
  $d = $i +1 ;
  $diff = $stat[$i] - $mean ; 
  $pdiff = int ($diff / $mean * 100) ;
  $mark = "" ;

  if ($pdiff >= 10) {$mark = "+"} ;
  if ($pdiff >= 20) {$mark = "++"} ;
  
  printf ("%8s %8s %10s %10s %2s",$d,$stat[$i],$diff,$pdiff."%",$mark);
  print "\n";
}

print "\n" , "-" x 50 , "\n\n" ;
