package App::perlmv::scriptlet::to_random;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our $SCRIPTLET = {
    summary => 'Rename to random characters',
    args => {
        # XXX len
    },
    code => sub {
        package
            App::perlmv::code;
        join("", map {("a".."z")[26*rand()]} 1..8);
    },
};

1;

# ABSTRACT:

=head1 SYNOPSIS
