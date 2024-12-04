package Bencher::Scenario::Ref::Util;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

our $scenario = {
    summary => 'Benchmark Ref::Util',
    precision => 0.001,
    participants => [
        {
            name=>'is_arrayref',
            module => 'Ref::Util',
            code_template => 'no warnings "void"; state $ref = []; Ref::Util::is_arrayref($ref) for 1..1000',
        },
        {
            name=>'is_plain_arrayref',
            module => 'Ref::Util',
            code_template => 'no warnings "void"; state $ref = []; Ref::Util::is_plain_arrayref($ref) for 1..1000',
        },
        {
            name=>'ref(ARRAY)',
            code_template => 'no warnings "void"; state $ref = []; ref($ref) eq "ARRAY" for 1..1000',
        },
        {
            name=>'reftype(ARRAY)',
            module => 'Scalar::Util',
            code_template => 'no warnings "void"; state $ref = []; Scalar::Util::reftype($ref) eq "ARRAY" for 1..1000',
        },
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO
