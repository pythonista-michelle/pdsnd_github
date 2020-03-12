# Written by Michelle Lonskey 2020-03-08
# For Udacity Programming for Data Science with R
# In what year were the most customers born?
# Added to Git Repo 2020-03-11

library(ggplot2)
library(dplyr)

chi = read.csv('chicago.csv', header = TRUE, sep = ",")
head(chi)
names(chi)

qplot(
  x = Birth.Year,
  data = chi,
  main = 'Chicago Users Birth Year Analysis',
  xlab = 'Birth year',
  ylab = 'User Count',
  color = I('black'),
  fill = I('green')
) +
  scale_x_continuous(limits = c(1950, 2000),
                     breaks = seq(1950, 2000, 10))

#summarize

ny %>% group_by(Birth.Year) %>% tally(sort = TRUE)
