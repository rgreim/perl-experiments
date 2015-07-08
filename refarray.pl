#! /usr/bin/perl

use warnings;
use strict;
use feature "say";

main();

sub main {
	my $refa = ['a','b','c'];
	my $refb = [@{$refa}];
	say @{$refb};
}
