#!/usr/bin/perl -w

%grocery = ("Apples" => 2,
            "Oranges" => 4,
            "Grapes" => 1,
            "Pears" => 4);

while (1) {
	system("clear");

	print "Grocery Lister\n";
	print "(a)dd, (l)ist, (d)elete, (c)hange or (q)uit: ";
	chomp($ANSWER = <STDIN>);
	
	if (lc($ANSWER) eq "a") {
		print "Enter a new item: ";
		chomp($NEWITEM=<STDIN>);
		print "Enter a quantity: ";
		chomp($NEWQUANT=<STDIN>);
		$grocery{$NEWITEM} = $NEWQUANT;

	} elsif (lc($ANSWER) eq "l") {
		foreach $key (sort keys %grocery) {
			print "$key = $grocery{$key}\n";
		}
		print "Press enter to continue... \n";
		$_=<STDIN>;

	} elsif (lc($ANSWER) eq "d") {
		print "Here is your current list: \n";
		$count=0;
		$num_keys=keys %grocery;
		while ($count < $num_keys) {
			($ITEM, $QUANT) = each %grocery;
			print "$ITEM = $QUANT\n";
			$count++;
		}
		print "Which one do you wish to delete? ";
		chomp($DEL=<STDIN>);
		delete $grocery{$DEL};
		print "Deleted... press enter to continue.";
		$_=<STDIN>;
	
	} elsif (lc($ANSWER) eq "c") {
		MODIFY: print "Here is your current list: \n";
		for (sort keys %grocery) {
			print "$_ = $grocery{$_}\n";
		}
		print "Which item do you wish to modify? ";
		chomp($CHNG=<STDIN>);
		$EXISTS=exists $grocery{$CHNG};
		if ($EXISTS) {
			while (lc($YESNO) ne "y") {
			  print "How many of $CHNG do you need now? ";
			  chomp($NEWAMT=<STDIN>);
			  print "You are changing $CHNG to $NEWAMT.\n";
			  print "Is this correct? (y/n): ";
			  chomp($YESNO=<STDIN>);
			  $grocery{$CHNG} = $NEWAMT if lc($YESNO) eq "y";
			}
		} else {
			print "That item does not exist. Press enter to try again...\n";
			$_=<STDIN>;
			next MODIFY;
		}

	} elsif (lc($ANSWER) eq "q") {
		last;

	} else {
		print "You chose an invalid option. Press enter to continue.\n";
		$_=<STDIN>;
	}
}
