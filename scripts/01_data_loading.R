library(survival)
library(tidyverse)

# Load lung cancer survival dataset
data(lung)

# Inspect dataset
head(lung)
str(lung)
summary(lung)

# Save dataset locally for reproducibility
write.csv(lung, "data/lung_dataset.csv", row.names = FALSE)
