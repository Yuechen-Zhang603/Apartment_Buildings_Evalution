#### Preamble ####
# Purpose: Cleans the raw Toronto healthcare outbreaks dataset obtained in
# "01-download_data.R".
# Author: Yuechen Zhang
# Date: 26 September, 2024
# Contact: bellazhang0719@outlook.com
# Pre-requisites: Run the file "01-download_data.R".

#### Loading Packages ####

# Cleaning the dataset
# Load necessary libraries
# Load necessary libraries

library(tidyverse)

# Load the dataset
raw_data <- read_csv("/Users/zhangyuechen/Desktop/abc/paper/data/raw_data.csv")

# Preview the data
head(raw_data)

# Handle Missing Values
# Option 1: Remove rows with too many missing values (e.g., more than 50%)
cleaned_data <- raw_data %>%
  filter(rowSums(is.na(.)) <= ncol(.) * 0.5)


# For categorical columns, replace NAs with the most frequent value or a placeholder
cleaned_data <- cleaned_data %>%
  mutate(across(where(is.character), ~ ifelse(is.na(.), "Unknown", .)))

# Remove Duplicates
cleaned_data <- cleaned_data %>%
  distinct()

# Convert Data Types
# Ensure that columns have the correct data types
cleaned_data <- cleaned_data %>%
  mutate(
    YEAR.REGISTERED = as.integer(YEAR.REGISTERED),
    YEAR.BUILT = as.integer(YEAR.BUILT),
    YEAR.EVALUATED = as.integer(YEAR.EVALUATED),
    PROPERTY.TYPE = as.factor(PROPERTY.TYPE),
    WARDNAME = as.factor(WARDNAME)
  )

# Remove Irrelevant Columns
# Example: Removing columns that start with '...' or 'X' (adjust based on your data)
cleaned_data <- cleaned_data %>%
  select(-starts_with('...'), -starts_with('X'))


write_csv(cleaned_data, "/Users/zhangyuechen/Desktop/abc/paper/data/cleaned_data.csv")

# Optional: Preview the cleaned data
head(cleaned_data)
