#! /usr/bin/perl

use warnings;
use strict;

#This script creates a conversion list of Celsius to Fahrenheit from 0 to 400 °C

main();

sub main {
	my $c=0;
	my $f=0;
	print "°C	°F\n";
	print "-------------\n";
	print "-------------\n";
	for (my $i=0; $i<9; $i++) {
		$c = 50*$i;
		$f = sprintf('%.1f', ($c-32)* 5/9);
		print "$c	$f\n";
	}		
}
