#! /usr/bin/perl

use warnings;
use strict;
use feature "say";

my $aref = ["name", "date of birth", "place of birth"];
my $cref = ["Gießen", "München", "Mailand"];
my $href = {people => $aref, city => $cref};
my %hash = (people=> $aref, city => $cref);



for my $key1 (keys %hash) {
	print "$key1 => $hash{$key1}\n";
}

for my $key2 (keys %$href) {
	say "$key2 => $href->{$key2}";
}
