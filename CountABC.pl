#! /usr/bin/perl

use warnings;
use strict;

#This program counts all a, b, c letters in STDIN

main();

sub main {
	print "Insert text: ";
	my @tmp = <STDIN>;
	while (<STDIN>) {
		@tmp = <STDIN>;
	}
	print "@tmp\n";
	count(@tmp);
}


sub count {
	my @a;
	my @b;
	my @c;
	my $atotal = 0;
	my $btotal = 0;
	my $ctotal = 0;
	for (my $i = 0; $i <= $#_ ; $i++) {
		$a[$i] = $_[$i] =~ tr/a/a/;
		$b[$i] = $_[$i] =~ tr/b/b/;
		$c[$i] = $_[$i] =~ tr/c/c/;
		$atotal += $a[$i];
		$btotal += $b[$i];
		$ctotal += $c[$i];
	}
	print "Count A: $atotal\n Count B: $btotal\n Count C: $ctotal\n";
}
