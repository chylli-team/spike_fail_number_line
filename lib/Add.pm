package Add;
use strict;
use warnings;
# export add and will_die
use base 'Exporter';
our @EXPORT = qw(add will_die);

sub add {
    my ($a, $b) = @_;
    return $a + $b;
}

sub will_die {
    die "I'm dead";
}

1;
