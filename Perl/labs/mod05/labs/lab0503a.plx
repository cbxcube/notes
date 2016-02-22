#!/usr/bin/perl -w
$cmd = "";

%hash1 = ("Apples"=>2,
          "Oranges"=>4,
          "Grapes"=>1,
          "Pears"=>4);

print "Grocery Lister\n";

while ($cmd ne "q"){ # Main loop

  print "(a)dd (d)elete (l)ist or (q)uit: ";
  chomp($cmd = <STDIN>);

  last if $cmd eq "q" ;

  if ($cmd eq "l"){ # List hash
  
    foreach (sort keys (%hash1)){
        print "$_ = $hash1{$_}\n";
    }
  
    next; # Restart loop
  }
  
  if ($cmd eq "a"){ # Add Item

    print "Enter name: ";
    chomp($name = <STDIN>);
  
    print "Enter quantity: ";
    chomp($qty = <STDIN>);

    $hash1{$name} = $qty;       
    next; #Restart loop
  }

  if ($cmd eq "d"){ # Delete Item
    
    print "Enter name: ";
    chomp($name = <STDIN>);
    
    delete $hash1{$name};
    next; # Restart loop
  }
}
