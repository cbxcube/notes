#!/usr/bin/perl -w

print "Please enter a fully qualified domain name: \n";
chomp($FQDN = <STDIN>);

$firstdot = index($FQDN, ".");
$lastdot = rindex($FQDN, ".");

$HOST = substr($FQDN, 0, $firstdot);
$DOMAIN = substr($FQDN, $firstdot + 1);
$TDOMAIN = substr($FQDN, $lastdot + 1);

print "Host: $HOST\n";
print "Domain: $DOMAIN\n";
print "Top Level Domain: $TDOMAIN\n";
