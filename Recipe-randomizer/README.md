# THE RECIPE RANDOMIZER

A simple perl program that takes a list of recipes and their ingredients and spits out a tidy menu for the week plus grocery list.

## The recipes
The recipes currently loaded into recipes.csv are all plant based and tasty! All the recipes are in metric units. Instructions are in PDF form; download here (http://bit.ly/2bK35iB).
To edit recipes.csv, open in a text file editor, or better yet, your handy dandy open source word processor (*cough* https://www.libreoffice.org/). It is primarily tab-delimited: the recipe names are on the left, 1 tab, then ingredients separated by commas on the right.

## Dependencies
Perl 5.1, List::Util.
Perl comes preinstalled on Mac OS X. To install the pacakge, open the Terminal app, copy & paste the following, and hit enter:

```
cpan install List::Util
```
## How to run THE RECIPE RANDOMIZER
1. Download all the files in this folder.
2. Open the Terminal app (on a Mac) or your shell / command line space gadget if on other operating system.
3. Run the following:

```
cd Downloads/recipe-randomizer ##Move to the folder where you saved the files.
perl vegan.pl ##Runs the program.
```
Do you like the menu? If not, run the program again. If you do, excellent. Save the output by copying & pasting elsewhere, texting to your roommates, etc.

There is now quantity tracking! It sums over the week's ingredients, including small amounts of spices. It's a good idea to look over the list before going shopping, to rearrange depending on where things are in your grocery store, or at least to add other things you need.

## Example menu and grocery list

```
==========Menu==========

Monday: pad thai
Tuesday: lasanga with ricotta
Wednesday: ramen soup
Thursday: pasta alfredo
Friday: rice, beans, and salad
Saturday: bowl of sweet potato, quinoa or rice
Sunday: burritos

======Grocery List======

175 ml almond milk
59 ml almondmilk
1 can black beans
10 g bouillon paste
1 brown sugar
340 g cauliflower
1 cherry tomatoes
...
```
