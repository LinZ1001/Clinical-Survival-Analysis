library(tidyverse)
data <- read.csv("data/lung_dataset.csv")

# Check missing values
colSums(is.na(data))

# Remove rows with missing survival info
data_clean <- data %>%
  drop_na(time, status)

# Save cleaned dataset
write.csv(data_clean, "data/lung_clean.csv", row.names = FALSE)
