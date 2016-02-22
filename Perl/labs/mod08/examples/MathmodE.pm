# Math package

package MathmodE;

use Exporter;
@ISA=("Exporter");
@EXPORT = qw/add subtract mult/;

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
