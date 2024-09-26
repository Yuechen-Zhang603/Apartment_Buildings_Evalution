#### Preamble ####
# Purpose: Downloads the data from the opendatatoronto package (Gelfand 2022)
# and saves the dataset for use in the main paper.
# Author: Yuechen Zhang
# Date: 26 September, 2024
# Contact: bellazhang0719@outlook.com
# Pre-requisites: Install the opendatatoronto (Gelfand 2022) and
# tidyverse (Wickham et al. 2019) packages.

#### Loading Packages ####


library(opendatatoronto)
library(tidyverse)

#### Download data ####
# get package
package <- show_package("4ef82789-e038-44ef-a478-a8f3590c3eb1")
package

#### Save data ####
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(x = raw_data, file = "data/raw_data.csv") 
