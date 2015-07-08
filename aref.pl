#! /usr/bin/perl

use warnings;
use strict;
use feature "say";


main();

sub main {
	my @array = (1,2,3);
	my $aref = \@array;
	say $aref->[1];
	$aref->[2] = 42;
	$aref->[4] = 23;
	my $elements;
	for $elements (my $i = 0; $i <= $aref; $i++) {
		if !(exists ($i) {
			$aref[$i] = undef;
			say $elements;
		} else {
			say $elements;
		}
	}
}

