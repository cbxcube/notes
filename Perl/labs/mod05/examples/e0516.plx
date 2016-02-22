#!/usr/bin/perl -w

@logs = qx/last/; # Get output of last command

for (@logs) {
  
  @temp = split;  # Put first field in $temp[0]
  next unless @temp;  # Skip Blank lines
  $users{$temp[0]}++; # Add +1 for each user name found 

}

for (sort keys(%users)) { # Print if 5 or > occurences
  
  print "$_ occurs $users{$_} times\n" if ($users{$_} > 4);
  
}
