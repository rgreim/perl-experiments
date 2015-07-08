#! /usr/bin/perl

use strict;
use warnings;
use feature "say";
use List::Util qw[min max];


#Berechnung der Hamming-Distanz zweier Sequenzen
#Syntax -> ./hamlevdist.pl <ham or lev> Seq1 Seq2

main();

sub main {
	if ($ARGV[0] eq "ham") {
		hammingD($ARGV[1], $ARGV[2]);
	} elsif ($ARGV[0] eq "lev" {
		levensteinD($ARGV[1], $ARGV[2]);
	}
}

sub hammiltonD {
	my $seq1 = $_[0];
	my $seq2 = $_[1];
	my $dist = 0;	
	if (length($seq1) == length($seq2)) {
		for (my $i = 0; $i < length($seq1); $i++) {
			if (substr($seq1, $i, 1) ne substr($seq2, $i, 1)) {
				$dist+=1;
			}
		}
		say "Hamming Distanz von $seq1 und $seq2 = $dist";
	} else {
		say "Fehler. Sequenzen nicht gleich lang.";
	}
}

sub levenshteinD {
	my $lseq1 = $_[0];
	my $lseq2 = $_[1];
	if ($lseq1 == 0) {
		return $lseq2;
	} elsif ($lseq2 == 0) {
		return $lseq1;
	} else {
		return min(levenshteinD(length($_[1])-1, length($_[1])),
			   levenshteinD(length($_[1]), length($_[0])-1),
			   levenshteinD(length($_[1])-1, length($_[0])-1)
			   + ((length($_[0]) == length($_[1])) ? 0 : 1));
}
