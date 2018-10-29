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

## Example output

==========Menu==========

Monday: cauliflower rice burrito bowl
Tuesday: butternut squash enchiladas
Wednesday: bbq sandwiches
Thursday: curried butternut squash soup
Friday: spaghetti squash bake 
Saturday: lasanga with ricotta
Sunday: burritos

======Grocery List======

59 ml almondmilk
31 g basil
2 cans black beans
5 g bouillon paste
200 g carrots
4 g chili powder
2 cilantro
...
