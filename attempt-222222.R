# Title:    Plotting in R
# Project:  Basic plots 

# INSTALLING AND LOADING PACKAGES ################################

if (!require("pacman")) install.packages("pacman")
pacman::p_load(datasets, pacman, rio, tidyverse)
# datasets: for demo
# pacman: for loading/unloading packages
# rio: for importing data
# tidyverse: most versatile package in R

# You can also load base packages manually
library(datasets)  # An example
?datasets         # Get help on package
library(help = "datasets")

# Iris data 
?iris
iris


# Anscombe's Quartet
?anscombe
anscombe

# Titanic survival data
?Titanic
Titanic

# One Variable QPLOT ####################################################
?qplot
head(iris)
# Note qplot is now deprecated but useful to understand GGPLOT

# Basic dotplot by group
qplot(Species, 
      Sepal.Length, 
      data = iris)
?qplot

# Use color to separate 
qplot(Species, 
      Sepal.Length,
      color = Species,
      data = iris)

#Now you can add geometry to it - but it gives error, why?

qplot(Species, 
      Sepal.Length,
      col = Species,
      data = iris,
      geom = boxplot)

?qplot

# the following works 

qplot(Species, 
      Sepal.Length,
      col = Species,
      data = iris,
      geom = c("boxplot"))



# Basic histogram
qplot(Sepal.Length, 
      geom = "histogram", 
      data = iris)

# Histogram, colored by group.
qplot(Sepal.Length, 
      geom = "histogram",
      fill = Species, 
      data = iris)

# Density plot, colored by group.
qplot(Sepal.Length, 
      geom = "density",
      fill = Species, 
      data = iris)


## GGPLOT ######################

# Standard Normal Distribution outline

a <- ggplot(data.frame(x = c(-6, 6)), aes(x = x))
a + stat_function(fun = dnorm,
                  size  = 2, color = "blue") 

?stat_function

# To add axes
a <- ggplot(data.frame(x = c(-6, 6)), aes(x = x))
a + stat_function(fun = dnorm, 
                  size  = 3, 
                  color = "blue") +
  xlab("z-scale") +
  ylab("Relative Frequency")

# Draw a histogram for a standard normal distribution
?ggplot
x <- rnorm(10000)
ggplot(NULL, aes(x = x)) + 
  geom_histogram(binwidth = 0.5, 
                 fill  = "blue", 
                 color = "red")




x <- rnorm(10000)
ggplot(NULL, aes(x = x)) + 
  geom_histogram(binwidth = 0.5, 
                 fill  = "blue", 
                 color = "red") +
  xlab("z-scores") +  # Title on x axis
  ylab("Frequency") 

# Now plot histogram using GGPLOT for Iris data

# Basic histogram using GGPLOT
iris %>%
  ggplot(aes(x = Sepal.Length, 
             fill = Species)) + 
  geom_histogram() 



# Descriptive histogram using GGPLOT
iris %>%
  ggplot(aes(x = Sepal.Length, 
             fill = Species)) + 
  geom_histogram() + 
  theme(legend.position = "bottom")

# Density plot
iris %>%
  ggplot(aes(x = Petal.Length, 
             fill = Species)) + 
  geom_density(alpha = 0.5) +
  theme(legend.position = "top")

# Same this as above but with two variables 
iris %>%
  ggplot(aes(x = Species, 
             y = Sepal.Length, 
             fill = Species)) + 
  geom_boxplot()


# Add axes labels

iris %>%
  ggplot(aes(x = Species, 
             y = Sepal.Length, 
             fill = Species)) + 
  geom_boxplot() +
  coord_flip() +
  xlab("Species") +
  ylab("Sepal Legth")
# theme(legend.position = "none")


## Doing more with GGPLOT ####

# Before we further dive-in we can refresh boxplot

# All varibale box plot

iris %>% boxplot()

# 
?boxplot


# gives an error, why? - we need to separate the variable we want
iris %>% boxplot(Sepal.Length)

#So, we select the variable we want

iris %>% 
  select(Sepal.Width) %>%
  boxplot(horizontal = F)



# How would you go about separating Sepal Length's boxplot for various species? 
# To do this we can use boxplot function
# 
boxplot(Sepal.Width,
        col = Species,
        data = iris)

boxplot(Sepal.Width ~ Species,
        data = iris,
        col = Species
)

# Scatterplot, colored by species, fit line, density
ggplot(iris, 
       aes(Petal.Width, Petal.Length,
           color = Species)) +
  geom_point(size = 3) +
  geom_smooth(method = lm) +
  geom_density2d(alpha = .5) +
  theme(legend.position = "bottom")

# More exercises - https://datacarpentry.org/R-ecology-lesson/04-visualization-ggplot2.html
# Violin Plots: https://datavizcatalogue.com/methods/violin_plot.html
# https://www.statology.org/r-remove-rows-from-data-frame-condition/

download.file(url = "https://ndownloader.figshare.com/files/2292169",
              destfile = "data/portal_data_joined.csv")

surveys_complete <- read_csv("data/portal_data_joined.csv")

head(surveys_complete)
?vars

yearly_counts_graph <- surveys_complete %>%
  count(year, genus) %>%
  ggplot(mapping = aes(x = year, y = n, color = genus)) +
  geom_line()


# RESET #################################################

detach("package:datasets", unload = T)  # detach base packages
p_unload(all)  # Detach all contributed packages

graphics.off()  # Clear plots, graphics

?mtcars
