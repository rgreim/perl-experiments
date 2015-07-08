#! /usr/bin/perl

use warnings;
use strict;

#This script calculates Celsius to Fahrenheit

main();

sub main {
	print "Insert the degree with scale (C or F):\n";
	my $tmp = <STDIN>;
	chomp $tmp;	
	if ($tmp =~ s/C//) {
		CtoF($tmp);
	} elsif ($tmp =~ s/F//) {
		FtoC($tmp);
	} else {
		print "Cannot find desired conversion method.\nPlease insert a temperature with one of the following scales: C or F.\n";
	}
}


sub CtoF {
	my $C = $_[0];
	my $F = ($C -32) * 5/9;
	print $F;
	print "\n";
}

sub FtoC {
        my $F = $_[0];
        my $C = ($F *1.8) + 32;
        print $C;
        print "\n";
}
