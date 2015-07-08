#! /usr/bin/perl

use warnings;
use strict;

#Sums up numbers

main();

sub main {
	while () {
		my $input = <STDIN>;
		if ($input ne "quit\n") {
			chomp ($input);
			print "\n";
			calcplus($input);
			print "\n";
		} else {
			last;
		}
	}
}

sub calcplus {
	my $sum = 0;
	my $tmp = shift;
		for (my $i=1; $i <= $tmp; $i++) {
			$sum += $i;
		}
	print $sum;
}
