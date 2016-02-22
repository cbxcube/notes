#!/usr/bin/perl -w

$str = "Name:Pantani,First Name:Marco,Country:Italy";

@arr = $str =~ /Name:(.*),First Name:(.*),Country:(.*)/;

print "\$1 = $1 \$2 = $2 \$3 = $3\n";

for ($x=0; $x <= $#arr; $x++){
  print "\$arr[$x] = $arr[$x] ";
}
print "\n";
