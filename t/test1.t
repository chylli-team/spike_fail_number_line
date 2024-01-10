use strict;
use warnings;
use Test::More;
use Add;

# Add your test cases here
subtest "test subtest1" => sub {
    is(Add::add(1, 2), 3, "in subtest 1 test 1");
    is(Add::add(2, 2), 4, "in subtest 1 test 2");
    subtest "subtest in subtest1" => sub {
        is(Add::add(1, 2), 3, "in subtest 1 test 1");
        is(Add::add(2, 2), 4, "in subtest 1 test 2");
    };
};

subtest "test subtest2" => sub {
    is(Add::add(1, 2), 3, "in subtest 2 test 1");
    is(Add::add(2, 2), 4, "in subtest 2 test 2");
    subtest "subtest in subtest2" => sub {
        is(Add::add(1, 2), 3, "in subtest 2 test 1");
        is(Add::add(2, 2), 5, "in subtest 2 test 2, will fail");
    };
};

subtest "test die" => sub {
    is(Add::will_die(1, 2), 3, "in subtest 2 test 1");
};

done_testing();
