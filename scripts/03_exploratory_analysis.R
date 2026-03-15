library(tidyverse)
data <- read.csv("data/lung_clean.csv")

# Age distribution
ggplot(data, aes(x = age)) +
  geom_histogram(bins = 20) +
  theme_minimal()

# Survival time distribution
ggplot(data, aes(x = time)) +
  geom_histogram(bins = 20) +
  theme_minimal()
