install.packages("lintr")
library(lintr)
lint(filename = "/scripts/00-simulate_data.R")

install.packages("styler")
library(styler)
style_file(path = "/scripts/00-simulate_data.R")