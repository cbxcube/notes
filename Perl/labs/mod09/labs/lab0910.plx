#!/usr/bin/perl -w
# init
$file = $dir = $link = $xuid = $k1 = $k2 = 0;

$dir = $ARGV[0];

# Remove trailing / if present
chop $dir if substr($dir, -1, 1) eq "/";

foreach $_ (<$dir/*>) {

   $file++ if -f;
   $dir++  if -d;
   $link++ if -l;
   $xuid++ if -u or -g or -k;
   $k1++  if -f and -s $_ <= 1000;
   $k2++  if -f and -s $_ > 1000;

}

print <<end_of_text;

Files:      $file
Directory:  $dir
Links:      $link
Files with special bits set: $xuid
Files < 1k:  $k1
Files > 1k:  $k2
end_of_text

