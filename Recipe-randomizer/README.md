# THE RECIPE RANDOMIZER

A rudimentary perl program that takes your favorite recipes, their ingredients, things you eat every week, and spits out a tidy menu for the week plus grocery list.

Extreme work in progress!!

## Hashtag VEGAN~
The recipes currently loaded into recipes.csv are all plant based and tasty! To edit, open in a text file editor, or better yet, your handy dandy open source word processor (*cough* https://www.libreoffice.org/). It's tab-delimited only: the recipe names are on the left, 1 tab, then ingredients separated by commas on the right. The script needs those commas only between ingredients. It needs the commas.

## Dependencies
Perl 5.1, List::Util, File::Slurp.
Perl comes preinstalled on Mac OS X. To install the two pacakges, open the Terminal app, copy & paste the following, and hit enter:

```
sudo cpanm install List::Util; sudo cpanm install File::Slurp
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

As it is now, the grocery list will have repeat items across recipes. I may or may not implement a quantity tracker. It's a good idea to look over the list before going shopping, to condense the items or at least rearrange depending on where things are in your grocery store.
