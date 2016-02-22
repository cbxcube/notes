#!/usr/bin/perl -w
$cmd = ""; # init

%hash1 = ("Apples"=>2,
          "Oranges"=>4,
          "Grapes"=>1,
          "Pears"=>4);

print "Grocery Lister\n";

while ($cmd ne "q"){ # main loop

  print "(a)dd (l)ist or (q)uit: ";
  chomp($cmd = <STDIN>);
  
  last if $cmd eq "q" ; # Exit if q
  
  if ($cmd eq "l"){ # print hash
  
    foreach $_ (sort keys (%hash1)){
        print "$_ = $hash1{$_} \n";
    }
    next; # Restart while loop
  }
  
  if ($cmd eq "a"){ # Add Item
    print "Enter name: ";
    chomp($name = <STDIN>);

    print "Enter quantity: ";
    chomp($qty = <STDIN>);

    $hash1{$name} = $qty;       

    next; # Restart while loop
  }
}
