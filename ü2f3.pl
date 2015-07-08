#! /usr/bin/perl

use warnings;
use strict;

main();

sub main{
	if @ARGV ( "-h" || "--help") {
		help();
	} elsif ( "-v" || "--version") {
		version ();
	} else {
		print @ARGV;
		print "\n";
	}
}

sub version {
print "${0} (Perl-Script) 1.00 \n Copyright (C) 2014"
}

sub help {
print "\n";
print "-h, --help		Opens this help \n";
print "-v, --version		Shows the version number and the license agreement of this script";
