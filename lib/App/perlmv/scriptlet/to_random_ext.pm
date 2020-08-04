package App::perlmv::scriptlet::to_random_ext;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

our $SCRIPTLET = {
    summary => 'Rename to random characters, preserve extension',
    args => {
        # XXX len
    },
    code => sub {
        package
            App::perlmv::code;
        my $ext;
        if (/.+\.(.+)/) {$ext=$1} else {$ext=undef}
        join("", map {("a".."z")[26*rand()]} 1..8) . (defined $ext ? ".$ext" : "");
    },
};

1;

# ABSTRACT:

=head1 SYNOPSIS
