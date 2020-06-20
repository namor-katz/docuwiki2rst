#!/usr/bin/perl
#
# Strict and warnings are recommended.
use strict;
use warnings;
#this module print $1, first arg
use Data::Dumper qw(Dumper);

# Print a message.
#print "Hello, World!\n";


#print Dumper \@ARGV;

my $filename = 'William_Blake.txt';
my $i = 0;

open(FH, '<', $filename) or die $!;

while(<FH>){
   print $_;
   $i++;
   if(($i % 5) == 0) {
	   print "5 page!\n\n";}
}

close(FH);
