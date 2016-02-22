# Math package

package mathpack;

sub add {
  my ($a, $b) = ($_[0], $_[1]);
  return $a + $b;
}

sub subtract {
  my ($a, $b) = ($_[0], $_[1]);
  return $a - $b;
}

sub mult {
  my ($a, $b) = ($_[0], $_[1]);
  return $a * $b;
}
1;
