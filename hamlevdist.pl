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
		say "Die Levenshtein-Distanz von $ARGV[1] und $ARGV[2] beträgt: " . levenshteinD($ARGV[1], $ARGV[2]) . ".";
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
	my $seq1 = $_[0];
	my $seq2 = $_[1];
	my $lseq1 = length($_[0]);
	my $lseq2 = length($_[1]);
	my %levmatrix;
	my @ch1 = split (//, $seq1);
	my @ch2 = split (//, $seq2);
	my $penalty = 0;
	for (my $i = 0; $i <= $lseq1; $i++) {
        	for (my $j = 0; $j <= $lseq2; $j++) {
            		$levmatrix {$i} {$j} = 0;
            		$levmatrix {0} {$j} = $j;
		}
        	$levmatrix {$i} {0} = $i;
	}
	for (my $i = 1; $i <= $lseq1; $i++) {
		for (my $j = 1; $j <= $lseq2; $j++) {
		$penalty = (($ch1[$i-1] eq $ch2[$j-1]) ? 0 : 1);
		if ($i == 0) {
			return $j;
		} elsif ($j == 0) {
			return $i;
		} else {
			$levmatrix {$i}{$j} = min ( $levmatrix {$i - 1} {$j} + 1,
						    $levmatrix {$i} {$j - 1} + 1,
						    $levmatrix {$i - 1} {$j - 1} 
			    	    		    + $penalty );
			}
		}
	}
	return $levmatrix {$lseq1}{$lseq2};
}
