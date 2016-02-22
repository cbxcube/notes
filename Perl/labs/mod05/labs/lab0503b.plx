#!/usr/bin/perl -w
$cmd = "";

%hash1 = ("Apples"=>2,
          "Oranges"=>4,
          "Grapes"=>1,
          "Pears"=>4);

print "Grocery Lister\n";

while ($cmd ne "q"){

  print "(a)dd (d)elete (l)ist (m)odify or (q)uit: ";
  chomp($cmd = <STDIN>);

  last if $cmd eq "q" ;

  if ($cmd eq "l"){ # List item in hash
  
    foreach (sort keys (%hash1)){
        print "$_ = $hash1{$_}\n";
    }
    next; # Restart loop
  }
  
  if ($cmd eq "a" || $cmd eq "m"){ # Add or modify
    print "Enter name: ";
    chomp($name = <STDIN>);
    
    print "Enter quantity: ";
    chomp($qty = <STDIN>);
    
    $hash1{$name} = $qty;       
    next; #Restart Loop
  }
  
  if ($cmd eq "d"){ # Delete block

    print "Enter name: ";
    chomp($name = <STDIN>);

    if (exists($hash1{name})) {
      delete $hash1{$name};
    } 
    
    else { 
      print "Name not in list\n";
    }
    next; # Restart loop
  }
}
