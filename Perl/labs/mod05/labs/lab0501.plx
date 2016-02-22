#!/usr/bin/perl -w

# Assign values to a Hash.
%hash1 = ("Apples" => 2,
          "Oranges" => 4,
          "Grapes" => 1,
          "Pears" => 4);

#Print the Hash out
print "\nThe initial values in the hash are:\n";

foreach $key (keys (%hash1)){
  print "$key = $hash1{$key}\n";
}

#Add two Grapefruites to the list and print out
$hash1{"Grapefruit"} = 2;
print "== Added new Fruit==\n";

foreach $key (sort keys (%hash1)){
  print "$key = $hash1{$key}\n";
}

#Delete Grapes from the list and print the list using each
delete $hash1{"Grapes"};
print "== Deleted Grapes ==\n";

while (($fruit,$quan) = each(%hash1)){
  print "$fruit = $quan\n";
}
