#!/usr/bin/perl -w

$dir = $ARGV[0];

chdir($dir) || die("Cannot cd to $dir $!\n");

print "\n";

# Change .pl files
foreach $file (<*.plx>){
  if (chmod(0755,$file)){
    print "$file changed\n";
  }
  else{
    warn "Couldn't chmod $file: $!\n";
  }
}
