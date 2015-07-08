#! /usr/bin/perl

use warnings;
use strict;
use feature "say";

main();

sub main {
	my @a = (1,2,3);
	my @b = (4,5,6);
	my @c = (@a,@b);
	say @c;
	say @c[3],@c[4];	
}
