#!/usr/bin/perl -w

while (<>) {

  # Only check lines with ftp.
  if ($_ =~ /ftp/) {
    
    # Get UserID, and host
    /(\w.*) ftp\s.*?(\w.*?)\s.*?(\w..)/;
    
    if ($3 eq "Tue" || $3 eq "Wed"){
      $uid = $1; $host = $2;
      $users{$uid}++ ;		# record some characteristics	
      $hosts{$host} ++ ;
    }
    
  }
}

print "FTP User Report:\n";
printf "%-10s %12s\n","User","Connections" ;

foreach (sort keys %users){
  printf "%-10s %12d\n", $_,  $users{$_};
}

print "\nFTP Host Report:\n";
printf "%-22s %12s\n","Host","Connections" ;

foreach (sort keys %hosts){
  printf "%-22s %12d\n", $_,  $hosts{$_};
}
