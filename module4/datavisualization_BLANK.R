# Please note: this module depends on results from Module 3 being available in your environment

# ---- Load packages ----
library(ggplot2)
library(dplyr)

# ---- Visualizations in {ggplot2} ----
# Any visualization has three components:
# 1. a data set (What are you trying to look at?)
# 2. a coordinate system (The most common are x and y axes)
# 3. a geom (How do you want to visualize the data set on the coordinate system?)
# ggplot2 uses layers to build plots

# ---- Starting with ggplot() ----
# Initialize ggplot()


# 1. Specify a data set


# 2. Specify a coordinate system


# 3. Specify a geom


# Goal: Create a boxplot with site on the x axis and area on the y axis
# Remember that this is simulated data!


## What happens if a continuous variable is used on the x axis?


# Goal: Create a histogram of area sampled


# ---- Adding Colour ----
## Create a scatterplot of mean number of individuals captured by year


# Goal: Make points blue  
## Can you explain why this happens?

## How would you fix this?


# Goal: Make the color of each point based on the month


# Goal: Make the color of each point based on site


# ---- ggplot() as an Object ----
# Store ggplot plots as an object

# Goal: Add labels on x and y axis


# Goal: Tidy up the background colours


# ---- Facetting ----
# Goal: Add a layer to plot3 that creates a separate panel for each habitat type


# Goal: Arrange the panels as a single column


# ---- Capstone {ggplot2} Exercise ----
# Reproduce the plot found here:
# https://github.com/DanielleQuinn/AAFC_Workshop/blob/master/module4/visualization.png

# Tip: Make a list of what needs to be done and tackle ONE thing at a time.

# Here is a list of things you'll need to do; see how many you can accomplish!

# Don't hesitate to consult resources:
# http://www.cookbook-r.com/Graphs/
# We haven't seen all of these yet!

# data preparation:
# (1) subset table1 to only include samples from pools and only years 1999 - 2012

# Components of the plot:
# (1) Scatterplot with year on x axis and mean on y axis
# (2) X axis label is "Year"
# (3) Y axis label is "Mean Number Caught"
# (4) Theme is black and white
# (5) Point colour is based on site
# (6) Points are triangles
# (7) Facet your plot based on site using facet_wrap
# (8) Stack all facets into one column
# (9) Draw a line connecting the points
  ## Hint: geom_line()
# (10) Draw a dashed line represented the maximum number captured per year
  ## Hint: Just like col and shape, there is an argument called linetype
# (11) Draw a dashed line representing the minumum number captured per year
# (12) Allow the y axis limits to be based only on the points within them
  ## Hint: Look at R Cookbook ggplot2 under "Facets"
# (13) Specificy the colors to be used as red, blue, purple, orange, and black
  ## Hint: Look at R Cookbook ggplot2 under "Colors" > "Palettes Manually Defined"
# (14) Name the lengend "Site ID"
  ## Hint: You can specify this in the name argument of the function used in step (13) 
# (16) Add a title: "Central Stonerollers in Pools (1999 - 2012)"
  ## Hint: ggtitle()
# (17) Store your finished plot in an object called myfigure
# (18) Save your plot to your working directory
  ## Hint: ggsave()
  ## Bonus: Make the plot 7 inches wide and 9 inches high
