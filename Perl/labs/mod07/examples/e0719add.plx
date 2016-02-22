#!/usr/bin/perl -w

$file = "support.db";

print "First Name:     "; $name = <STDIN>;
print "Department:     "; $dept = <STDIN>;
print "Severity [1-5]: "; $sev = <STDIN>;
print "Problem:        "; $prob = <STDIN>;
chomp ($name, $dept, $sev, $prob);

# Join parts together and save into file.
$v = "$name--$dept--$sev--$prob";

open OUT, ">>$file" or die "Open failed: $!\n";
print OUT "$name===$v\n";

close OUT;
