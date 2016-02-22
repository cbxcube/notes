#!/usr/bin/perl -w

$file = $ARGV[0];

if (-e $file){

  ( $dev,$ino,$mode,$nlink,$uid,
    $gid,$rdev,$size,$atime,$mtime, 
    $ctime,$blksize,$blocks) = stat($file);

    print "Stat Results\n";
  print "dev: $dev\n";
  print "inode: $ino\n";
  print "mode: $mode\n";
  print "# of links: $nlink\n";
  print "uid: $uid\n";
  print "gid: $gid\n";
  print "rdev: $rdev\n";
  print "size: $size\n";
  print "last access time: $atime\n";
  print "last modify time: $mtime\n";
  print "inode change time: $ctime\n";
  print "block size: $blksize\n";
  print "blocks: $blocks\n";
}
