#! /usr/bin/perl

use warnings;
use strict;
use feature "say";
use POSIX qw(strftime);

main();

sub main {
	if (@ARGV != 2) {
		say "Two arguments needed. Please insert file name and search parameters.";
	} else {
		open (File, "< $ARGV[0]") or die "File $ARGV[0] could not be opened, $!";
		my $lines = [<File>];
		close (File);
		search($lines, $ARGV[1], $ARGV[0]);
	}
}

sub search {
	my @data = @{$_[0]};
	my $searchPar = $_[1];
	my $fileName = $_[2];
	my @output;
	my $searchHit = 0;
	#my $date = strftime "%F", localtime;
	#my $time = strftime "%X", localtime;
	for (my $i = 0; $i < @data -1; $i++) {
		@data[$i] = chomp;
	}
	for (my $i = 0; $i < @data -1; $i++) {
		@data = tr/\s//g;
		if ($data[$i]=~(/$searchPar/)) {
			$output[$i] = $data[$i];
			print "line " . ($i+1) . "; $output[$i]";
			$searchHit++;
		}
	}
	#my $logValues = join (";",$date,$time,$fileName,$searchPar,$searchHit);
	#open (File2, ">> Log.txt") or die "Could not open file Log.txt, $!";
	#say File2 $logValues;
	#close (File2);
	
}
