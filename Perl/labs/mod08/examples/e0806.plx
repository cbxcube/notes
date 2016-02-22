#!/usr/bin/perl -w

$name = "Larry";
print "\$name before sub = $name\n";

$ret = myuc($name);

print "\$name after sub = $name\n";
print "Value returned: $ret\n";

sub myuc{
  $copy_of_name = $_[0];
  $copy_of_name = uc($copy_of_name);
  return $copy_of_name;
}
