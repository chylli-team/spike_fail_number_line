use strict;
use warnings;
use Test::More tests => 1;
subtest 'test subtest' => sub {
  ok(1, "hello");
  ok(2, "world");
};
