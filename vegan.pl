#!/bin/perl
use strict;
use warnings;
use File::Slurp;
use 5.010;
use List::Util qw(shuffle);

my @geteveryweek=read_file("get_every_week.txt", chomp => 1);
my %recipes;
my @recipes;

open (IN, '<', "recipes.csv") or die ($!);
  while (<IN>){
    chomp;
    my $line = $_ unless ($_ eq "\n");
    push @recipes, $line;
   }
close IN;

foreach my $r (@recipes){
  my ($b, $c) = split '\t', $r;
  my @c = split ',', $c;
  my $ingredients = join ' ', @c;
  $recipes{$b} .= $ingredients;

}

my @days = ('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday');

## The following method of sampling without replacement is from http://stackoverflow.com/questions/8963228/how-can-i-take-n-elements-at-random-from-a-perl-array ##
my @deck= (keys %recipes);
my @shuffled_indices = shuffle(0..$#deck);
my $num_picks = 7;
my @pick_indices = @shuffled_indices[ 0 .. $num_picks - 1 ];
my @picks = @deck[ @pick_indices ];

my @add_to_grocery_list;

foreach my $pick (@picks){
  my @items = split '  ', $recipes{$pick};
  foreach my $item(@items){
  push @add_to_grocery_list, $item;}
}


print "==========Menu==========\n\n";
foreach my $i (0..6){print $days[$i] . ": " . $picks[$i] . "\n";}

print "\n";
print "======Grocery List======\n\n";
print (join "\n", @geteveryweek);
print "\n";
print (join "\n", @add_to_grocery_list);
print  "\n";

exit;











#
