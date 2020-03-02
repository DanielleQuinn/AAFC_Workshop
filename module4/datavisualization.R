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
ggplot()

# 1. Specify a data set
ggplot(data_tb)

# 2. Specify a coordinate system
ggplot(data_tb, aes(x = year, y = count))

# 3. Specify a geom
ggplot(data_tb, aes(x = year, y = count)) +
  geom_point()

ggplot(data_tb) +
  geom_point(aes(x = year, y = count))

# Goal: Create a boxplot with site on the x axis and area on the y axis
# Remember that this is simulated data!
ggplot(data_tb) +
  geom_boxplot(aes(x = site, y = area))

## What happens if a continuous variable is used on the x axis?
ggplot(data_tb) +
  geom_boxplot(aes(x = year, y = area))

ggplot(data_tb) +
  geom_boxplot(aes(x = as.factor(year), y = area))

# Goal: Create a histogram of area sampled
ggplot(data_tb) +
  geom_histogram(aes(x = area))

# ---- Adding Colour ----
## Create a scatterplot of mean number of individuals captured by year
ggplot(data_tb) +
  geom_point(aes(x = year, y = count))

# Goal: Make points blue  
## Can you explain why this happens?
ggplot(data_tb) +
  geom_point(aes(x = year, y = count, col = "blue"))
## How would you fix this?
ggplot(data_tb) +
  geom_point(aes(x = year, y = count), col = "blue")

# Goal: Make the color of each point based on the month
ggplot(data_tb) +
  geom_point(aes(x = year, y = count, col = month))

# Goal: Make the color of each point based on site
ggplot(data_tb) +
  geom_point(aes(x = year, y = count, col = site))

# ---- ggplot() as an Object ----
# Store ggplot plots as an object
plot1 <- ggplot(data) +
  geom_point(aes(x = year, y = count, col = site))
plot1

# Goal: Add labels on x and y axis
plot2 <- plot1 +
  xlab("Year") +
  ylab("Number Captured")
plot2 # show plot2

# Goal: Tidy up the background colours
plot3 <- plot2 +
  theme_bw()
plot3

# ---- Facetting ----
# Goal: Add a layer to plot3 that creates a separate panel for each habitat type
plot3 + facet_wrap(~habitat)

# Goal: Arrange the panels as a single column
plot3 + facet_wrap(~habitat, ncol = 1)

# ---- Capstone {ggplot2} Exercise ----
# Reproduce the plot found here:
# https://github.com/DanielleQuinn/OTN_workshop/blob/master/GapMinderReport.pdf

# Tip: Make a list of what needs to be done and tackle ONE thing at a time.

# Here is a list of things you'll
# need to do; see how many you can accomplish

# Don't hesitate to consult resources:
# http://www.cookbook-r.com/Graphs/
# We haven't seen all of these yet!

# data preparation:
# (1) subset table1 to only include samples from pools

# creating the plot:
# (1) Scatterplot with year on x axis and mean on y axis
# (2) X axis label is Year
# (3) Y axis label is Mean Number Caught
# (4) Theme is black and white
# (5) Point colour is based on site
# (6) NEW! Points are triangles

# (7) Facet your plot based on site using facet_wrap
# (8) Stack all facets into one column
# (9) NEW! Draw a line connecting the points
  ## Hint: geom_line()
# (10) NEW! Draw a dashed line represented the maximum number captured per year
  ## Hint: Just like col and shape, there is an argument called linetype
# (11) Draw a dashed line representing the minumum number captured per year
# (12) NEW! Allow the y axis limits to be based only on the points within them
  ## Hint: Look at R Cookbook ggplot2 under "Facets"
# (13) NEW! Specificy the colors to be used as red, blue, purple, orange, and black
  ## Hint: Look at R Cookbook ggplot2 under "Colors" > "Palettes Manually Defined"
# (14) NEW! Name the lengend SITE ID
  ## Hint: You can specify this in the name argument of the function used in step (13) 
# (16) NEW! Add a title: "Mean number of Central Stonerollers captured in pools between 2000 and 2015"
  ## Hint: ggtitle()
# (17) Store your finished plot in an object called myfigure
# (18) NEW! Save your plot to your working directory!
  ## Hint: ggsave()

# Solution:
myfigure <- ggplot(table1 %>% filter(habitat == "pool")) +
  geom_point(aes(x = year, y = mean, col = site), size = 4, shape = "triangle") + 
  geom_line(aes(x = year, y = mean, col = site)) +
  geom_line(aes(x = year, y = maximum, col = site), linetype = "dashed") +
  geom_line(aes(x = year, y = minimum, col = site), linetype = "dashed") +
  xlab("Year") +
  ylab("Mean Number Captured") + 
  theme_bw(12) +
  facet_wrap(~site, ncol = 1, scales = "free_y") +
  scale_color_manual(values = c("red", "blue", "purple", "orange", "black"),
                     name = "SITE ID") +
  ggtitle("Mean number of Central Stonerollers captured in pools between 2000 and 2015")

myfigure

# Saving plots to your current working directory
ggsave("myfigure.png", myfigure)
