# Written by Michelle Lonskey 2020-03-08
# For Udacity Programming for Data Science with R
# What is the most common day of week for bike share in Washington?
# Changed line color in visual
library(ggplot2)
library(dplyr)

# adding stringsAsFactors = FALSE so that the date will not be in factor format and can be converted to date and eventually day

wash = read.csv(
  'washington.csv',
  header = TRUE,
  sep = ",",
  stringsAsFactors = FALSE
)
head(wash)

# checking the data structure before conversion (date is chr)
str(wash)

# converting the chr Start.Time to date
wash$Start.Time <- as.Date(wash$Start.Time)

# checking the structure to verify it's a date now

str(wash)

# it is - woot

# adding a column to the dataset that extracts the weekday name from the date
wash$weekday <- weekdays(wash$Start.Time)

# making a histogram with the Washington bike trip volume by day of week

qplot(
  x = wash$weekday,
  data = wash,
  main = 'Washingting Bike Trip Volume by Day of Week',
  xlab = 'Day of Week',
  ylab = 'Washington Bike Trip Volume',
  color = I('black'),
  fill = I('#008080')
)

wash %>% group_by(wash$weekday) %>% tally(sort = TRUE)
