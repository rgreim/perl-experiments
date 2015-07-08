#! /usr/bin/perl

#Warnings and strict in every script!
use warnings;
use strict;

print "Hello, Perl-World\n";
my $string="Just another Perl hacker...";
print $string."\n";


#Using arrays
my @array;

$array[0] = "Dies ist ein Textarray";
$array[1] = 42;
$array[2] = "Wer hat's erfunden?";

print "\n";
print $array[2];
print "\n";
print $array[1];
print "\n";
print $array[0];
print "\n";

print @array;

#Using hashs
my %hash;

$hash{"Axel"} =42;
$hash{"a"} = "Monat";
$hash{"c"} = "Jahr";

print "Axel ist ";
print $hash{"Axel"};
print " Jahre alt.\n";
print "To clear the screen press ctrl + l.\n";

#Mix arrays with hash and use multiple arrays
my @days;

$days[0] = 28;
$days[1] = 30;
$days[2] = 31;
$days[3] = 365;
$days[4] = 360;

print @days;
print "\n";
print @days[2,1,0];
print "\n";
#print @days{'a','c'};

#Zahlen und Strings konkattinieren
print 6 . "42" . 365 ."\n";
print "7" + 5 . "\n";

#foreach-Schleife
foreach my $bla (@days) {
print "$bla !\n"
}

sub max {
	my $max = shift (@_);
		foreach my $foo (@_) {
			if ($max < $foo) {
				$max = $foo;
			}
		}
	return $max;
}

my $bestday = max(15,48,65,1,5445,24,22,5,);
print $bestday."\n";

my $text = "texttexttext";

print $text . "\n";
$text =~ s/text/blah/;
print $text . "\n";
$text =~ s/text/blah/g;
print $text . "\n";
