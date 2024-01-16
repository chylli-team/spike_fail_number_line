use strict;
use warnings;
use Test::More;
use Test::Exception;
use Add;

lives_ok { will_die() } "will_die() lives_ok";
done_testing;
