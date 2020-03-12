# Written by Michelle Lonskey 2020-03-08
# For Udacity Programming for Data Science with R
# What are the user counts by gender in New York City
# Added to git repo 2020-03-11

library(ggplot2)
library(dplyr)

# adding stringsAsFactors = FALSE so that the date will not be in factor format and can be converted to date and eventually day

ny = read.csv('new_york_city.csv', header = TRUE, sep = ",")
head(ny)
names(ny)

qplot(
  x = Gender,
  data = ny,
  main = 'New York City User Counts by Gender',
  xlab = 'Gender',
  ylab = 'New York City User Counts',
  color = I('#e30b5d'),
  fill = I('#e30b5d')
)

# Summarize data

ny %>%
  group_by(Gender) %>%
  summarize(gender_count = n())
