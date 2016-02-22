#! /usr/bin/perl -w
# Demonstates ways to declare arrays
$x = John; $y = Joe; $z = Jake;
print "\n";

@a = ("$x", "$y", "$z");
print "a: @a \n\n";

@b = ('$x', '$y', '$z');
print "b: @b \n\n";

# Use qw
@c = qw/John Joe Jake/;
print "c: @c \n\n";

@d = qw/$x $y $z/;
print "d: @d \n\n";

@e = qw/"$x" "$y" "$z"/;
print "e: @e \n\n";

