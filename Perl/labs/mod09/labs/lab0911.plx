#!/usr/bin/perl -w

$dir = $ARGV[0];

# Remove trailing slash if present
chop $dir if(substr($dir,-1,1) eq "/"); 

@dir = <$dir/*>; # Read directory glob

# Sorting by size.
@sdir = sort { -s $b <=> -s $a } @dir ;

printf("%20s %10s\n", "File","Size");

foreach (@sdir) {
  printf("%20s %10s\n", $_, -s $_);
}
