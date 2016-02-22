#!/usr/bin/perl -w
$age = 0; $oldest = 0;
$oldestfile = "";


print "\nThe oldest file is:\n\n";

foreach $file (@ARGV){

  if (-e $file){
    $age = -M $file;

    if ($age > $oldest){
      $oldest = $age;
      $oldestfile = $file;
    }
  }
  else {
    print "File $file does not exist \n";
  }

}

print "$oldestfile is $oldest days old\n";
print "\n";
