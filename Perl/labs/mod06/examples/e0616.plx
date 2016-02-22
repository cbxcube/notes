#!/usr/bin/perl -w
#use 5.010;

$a = "Foo";
$b = "Foo";
$b2 = "Bar";
$c = 123;
$d = 123.0;

print "\$a eq \$b\n" if $a ~~ $b;
print "\$a ne \$b2\n" unless $a ~~ $b2;
print "\$c == \$d\n" if $c ~~ $d;

%fflint = ( "name" => "flintstone",
	 "fname" => "fred",
	 "job" => "stonecutter");
%fflint2 = ( "name" => "flintsone",
	 "fname" => "wilma",
	 "job" => "houswife");
@list = qw\Foo Bar Baz\;
@list2 = qw\Foo Bar Baz\;

use 5.010;
say "equal lists" if @list ~~ @list2;
say "equal key sets for hashes" if %fflint ~~ %fflint2;

say "\@list contains $a" if $a ~~ @list;
say "\@list contains $a" if @list ~~ $a; 
#~~ is a commutative operator
$b = "name";
say "$b is a key" if ($b ~~ %fflint);
say "$b is a key" if (%fflint ~~ $b); 
 
#find the "ob" at the end of the key "job" in the %fflint hash 
say "found" if /ob$/ ~~ %fflint; 

