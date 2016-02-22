#!/usr/bin/perl -w
# Domain Splitter
print "Enter domain name: ";
chomp( $name = <STDIN> );

# Find dots
$first = index($name, ".");
$second = rindex($name, ".");

# Split apart
$host = substr($name, 0, $first);
$domain = substr($name, ($first + 1));
$top = substr($name, ($second + 1));

# Print Results
print "Host: $host\n";
print "Domain: $domain\n";
print "Top Level domain: $top\n";

