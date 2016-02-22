#!/usr/bin/perl -w

# A Perl ls command

@files = `/usr/bin/ls`;
chomp(@files);

$count = @files;

print "@files\n";
print "$count files listed\n"
