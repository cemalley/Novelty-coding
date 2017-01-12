#!/bin/perl
use strict;
use warnings;

# Goofing around to compare grep and map searches.

my @columns = qw(alpha
beta
kappa
delta);

my @passed_QC = qw(beta);

foreach my $column (@columns){
  foreach my $passed (@passed_QC){
    if ($column =~ $passed){
      my ($index) = grep {$columns[$_] =~ $passed} (0..@columns-1);
      print "grep method: " . $columns[$index] . "\n";
    }
  }
}

my @hit = map($passed_QC[0], @columns);
print "map method: " . $hit[0] . "\n";

exit;
