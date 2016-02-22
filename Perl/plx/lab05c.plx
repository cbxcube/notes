#!/usr/bin/perl -w

%hash1 = ("Apples" => 2,
	   "Oranges" => 4,
	   "Grapes" => 1,
	   "Pears" => 4);

print "The intial values for \%hash1:\n";
print "Apples = $hash1{Apples}\n";
print "Oranges = $hash1{Oranges}\n";
print "Grapes = $hash1{Grapes}\n";
print "Pears = $hash1{Pears}\n";

print "ADDING GRAPEFRUIT AND SORTING THE KEYS\n";
$hash1{Grapefruit} = "2";

foreach $key (sort keys (%hash1)) {
	print "$key --> $hash1{$key}\n";
}

print "REMOVING GRAPES AND PRINT THE REMAINING USING EACH\n";
delete $hash1{Grapes};

$num_keys = keys %hash1;
#print "$num_keys";

$count=1;

while ($count <= $num_keys) {
	($key, $value) = each %hash1;
	print "$key --> $value\n";
	$count++;
}
