#!/usr/bin/perl -w
$a = "hello"; 
$b = "world";

# Concatenate
$c = $a . $b;     # $c equals "helloworld"
print "\$c = " . "$c\n";

# Add world to $a using .=
$a .= " world";    # $a equals "hello world"
print "\$a = " . "$a\n";
