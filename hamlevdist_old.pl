#! /usr/bin/perl

use strict;
use warnings;
use feature "say";
use List::Util qw[min max];

#Robin Greim, 4069775
#Berechnung der Hamming- und Levenshtein-Distanz zweier Sequenzen
#Syntax -> ./hamlevdist.pl <ham or lev> Seq1 Seq2

main();

sub main {
	if ($ARGV[0] eq "ham") {
		hammingD($ARGV[1], $ARGV[2]);
	} elsif ($ARGV[0] eq "lev") {
		say "Die Levenshtein-Distanz beträgt: " . levenshteinD(length($ARGV[1]), length($ARGV[2])) . ".";
	} else {
		say "Method specification is needed. Please insert ham (for hammilton-distance) or lev (for levenshtein-distance)."
	}
}

sub hammingD {
	my $seq1 = $_[0];
	my $seq2 = $_[1];
	my $dist = 0;	
	if (length($seq1) == length($seq2)) {
		for (my $i = 0; $i < length($seq1); $i++) {
			if (substr($seq1, $i, 1) ne substr($seq2, $i, 1)) {
				$dist+=1;
			}
		}
		say "Hamming-Distanz von $seq1 und $seq2 = $dist";
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
		return min( (levenshteinD($lseq1 - 1, $lseq2) + 1),
			    (levenshteinD($lseq1, $lseq2 - 1) + 1),
			    (levenshteinD($lseq1 - 1, $lseq2 - 1) 
			    + (($lseq1 - 1 == $lseq2 - 1) ? 0 : 1)) );
	}
}
