#! /usr/bin/perl

use warnings;
use strict;

#Write STD variables

main();

sub main{
	print '$$ )' . $$;
	print "\n";
	print '$0 )' . $0;
	print "\n";
	print '$( )' . $(;
	print "\n";
	print '$) )' . $);
	print "\n";
	print '$< )' . $<;
	print "\n";
	print '$> )' . $>;
	print "\n";
	print '$^O )' . $^O;
	print "\n";
	print '$^T )' . $^T;
	print "\n";
	print '$^V )' . $^V;
	print "\n";
	print '$^X )' . $^X;
	print "\n";
}
