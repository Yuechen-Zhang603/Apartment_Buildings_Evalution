#### Preamble ####
# Purpose: Generates a simulated version of the Toronto apartment building evaluation
# dataset from this analysis and uses tests to ensure that the simulated data
# is reasonable and realistic.
# Author: Yuechen Zhang
# Date: 26 September, 2024
# Contact: bellazhang0719@outlook.com
# Pre-requisites: Install the tidyverse
# (Wickham et al. 2019) packages.

#### Loading Packages ####

# install.packages("tidyverse")

library(tidyverse)

#### Data Simulation ####

# Set the number of rows
n <- 3208

# Simulate the dataset
set.seed(123) 
simulated_data <- data.frame(
  ...1 = 1:n,
  X_id = 1:n,
  RSN = sample(4155280:4356727, n, replace = TRUE),
  YEAR.REGISTERED = sample(2015:2020, n, replace = TRUE),
  YEAR.BUILT = sample(1950:2000, n, replace = TRUE),
  YEAR.EVALUATED = sample(2020:2024, n, replace = TRUE),
  PROPERTY.TYPE = sample(c("PRIVATE", "PUBLIC"), n, replace = TRUE),
  WARD = sample(1:10, n, replace = TRUE),
  WARDNAME = sample(c("Etobicoke-Lakeshore", "York South-Weston", "Scarborough Southwest"), n, replace = TRUE),
  SITE.ADDRESS = paste(sample(100:999, n, replace = TRUE), "BERRY RD"),
  CLEANING.LOG = sample(0:3, n, replace = TRUE),
  VITAL.SERVICE.PLAN = sample(0:3, n, replace = TRUE),
  ELECTRICAL.SAFETY.PLAN = sample(0:3, n, replace = TRUE),
  STATE.OF.GOOD.REPAIR.PLAN = sample(0:3, n, replace = TRUE),
  TENANT.SERVICE.REQUEST.LOG = sample(0:3, n, replace = TRUE),
  GRID = paste0("W0", sample(300:329, n, replace = TRUE)),
  LATITUDE = runif(n, min = 43.588276, max = 43.813943),
  LONGITUDE = runif(n, min = -79.614871, max = -79.149243),
  X = runif(n, min = 295530.634, max = 332968.256),
  Y = runif(n, min = 4827372.0, max = 4852475.0)
)

# View the first few rows of the simulated dataset
head(simulated_data)
