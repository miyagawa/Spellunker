use strict;
use warnings;
use utf8;
use Test::More;

use BSpell::Pod;

subtest 'ok' => sub {
    my $sp = BSpell::Pod->new();
    my @ret = $sp->check_file('t/dat/ok.pod');
    is(0+@ret, 0);
};

subtest 'fail' => sub {
    my $sp = BSpell::Pod->new();
    my @ret = $sp->check_file('t/dat/fail.pod');
    is(0+@ret, 1);
    is_deeply( \@ret, [ [ 6, 'gah', 'aaaaaaaaaaaaaaaaaaa' ] ] );
};

done_testing;

