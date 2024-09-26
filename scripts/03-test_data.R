#### Preamble ####
# Purpose: Runs tests on the cleaned dataset to check the validity
# of the entries.
# Author: Yuechen Zhang
# Date: 26 September, 2024
# Contact: bellazhang0719@outlook.com
# Pre-requisites: Run the files "01-download_data.R" and "02-data_cleaning.R".

#### Loading Packages ####

# install.packages("tidyverse")
library(tidyverse)

# Load the dataset
data <- read_csv("/Users/zhangyuechen/Desktop/abc/paper/data/raw_data.csv")

# Check the minimum value in the YEAR.BUILT column
min_year_built <- min(data$YEAR.BUILT, na.rm = TRUE)

# Check if the minimum value is greater than 1900
if (min_year_built > 1900) {
  print("All values in YEAR.BUILT are greater than 1900.")
} else {
  print(paste("There are values in YEAR.BUILT that are less than or equal to 1900. The minimum value is:", min_year_built))
}

# Load necessary library
library(readr)

# Load the dataset
data <- read_csv("/Users/zhangyuechen/Desktop/abc/paper/data/cleaned_data.csv")

# Check the minimum value in the WARD column
min_ward <- min(data$WARD, na.rm = TRUE)

# Check if the minimum value is greater than 0
if (min_ward > 0) {
  print("All values in WARD are greater than 0.")
} else {
  print(paste("There are values in WARD that are less than or equal to 0. The minimum value is:", min_ward))
}

