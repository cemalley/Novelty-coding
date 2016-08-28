#!/bin/perl
use strict;
use warnings;
use 5.010;
use List::Util qw(shuffle);
use List::Util qw(sum);

my %recipes;

open (IN, '<', "recipes.csv") or die ($!);
  while (<IN>){
    chomp;
    my $line = $_ unless ($_ eq "\n");
    my ($b, $c) = split '\t', $line;
    my $ingredients = join ' ', (split ',', $c);
    $recipes{$b} .= $ingredients;
   }
close IN;

my @days = ('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday');

## The following method of sampling without replacement is from http://stackoverflow.com/questions/8963228/how-can-i-take-n-elements-at-random-from-a-perl-array ##
my @deck = (keys %recipes);
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

my %quantity_tracker;
my @finalized_list;

foreach my $ingredient (@add_to_grocery_list){
  if (!($ingredient =~ /\d/)){
    # ingredient does not have precise quantity measurement
    push @{$quantity_tracker{$ingredient}}, "1, unit";
  }
  if ($ingredient =~ /( package | g | ml | clove | can )/i){
    # ingredient has a kind of quantity measurement
    my $unit = $1;
    my $quantity = (split /$unit/, $ingredient)[0];
    $ingredient = (split /$unit/, $ingredient)[1];
    push @{$quantity_tracker{$ingredient}}, "$quantity,$unit";
  }
}

foreach my $key (sort keys %quantity_tracker){
  my $unit;
  my @quantities;

  foreach my $quantity (@{$quantity_tracker{$key}}){
    my ($number) = $quantity =~ /(\d+)/;
    ($unit) = $quantity =~ /(package|g|ml|clove|can|unit)/;
    push @quantities, $number;
  }

  my $sum = sum(@quantities);

  if ($unit =~ /package|g|ml|clove|can/){

    if ($sum == 1){
      push @finalized_list, "1 $unit $key";
    }

    if ($sum > 1){
      if ($unit =~ /package|clove|can/){
        $unit = $unit . "s";
      }
      push @finalized_list, "$sum $unit $key";
    }
  }

  if ($unit =~ /unit/){
    push @finalized_list, "$sum $key";
  }

}

print "==========Menu==========\n\n";
foreach my $i (0..6){print $days[$i] . ": " . $picks[$i] . "\n";}
print "\n";
print "======Grocery List======\n\n";
print "$_\n" for @finalized_list;
print  "\n";

exit;
