# Problem
I crop a lot of large images into smaller, grid crops for Instagram. All online grid cropping tools drop columns of pixels, or don't snap the image to a pixel-perfect grid. This tool does.

# Setup
Place split.rb in whatever folder your images will be. Then, run `gem install chunky_png`. Finally, in the CLI, type `ruby file.png CxR`, where file.png is the name of your file, C is the number of desired columns, and R is the number of desired rows. 


This script is really simple, but I find myself using it all the time, so I decided to put it out there for others, too. 