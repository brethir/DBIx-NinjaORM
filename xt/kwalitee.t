#!perl

use strict;
use warnings;

use Test::More;


# Load extra tests.
eval
{
	require Test::Kwalitee::Extra;
};
plan( skip_all => 'Test::Kwalitee::Extra required to evaluate code' )
	if $@;

# Run extra tests.
Test::Kwalitee::Extra->import(
	qw(
		:optional
		!has_example
	)
);

# Clean up the extra file Test::Kwalitee generates.
END
{
	unlink 'Debian_CPANTS.txt'
		if -e 'Debian_CPANTS.txt';
}
