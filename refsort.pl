#! /usr/bin/perl

use warnings;
use strict;
use feature "say";

main();

sub main {
	my $refa = [5,6,3,7,1,2,4];
	my @array = ["blubb","bla","Katze"];
	say @{sortref(@array)};
}

sub sortref {
	my @array = @_;
	my @sortarr;
	if (ref ($_[0]) eq "ARRAY") {
		@sortarr = sort @{$array[0]};
	} else {
		 @sortarr = sort @array;
	}
	return my $refbla = \@sortarr;
}
