library(tidyverse)
library(lme4)

# In what follows I'm just going to generate an example with the built-in
# iris data. You can also access this data by entering
# data(iris)
# in the console, but I've saved it as a .csv for this example

# Global variables
rawdata.path <- "raw-data/"
plot.path <- "plots/"
print.model.output <- "Y"

# Read in data
iris.data <- read_csv(paste0(rawdata.path, "iris.csv"))

# Prepare data for analyses
# (this is just an example of data prep: here adding a new column)
iris.data  <- iris.data %>%
  mutate(Petal.Area = Petal.Length * Petal.Width)

# Run models and generate plots
source("1-UncorrectedAccuracy.R")
source("2-CorrectedAccuracy.R")
source("3-UnseenWords.R")

# Print model output if requested in the global variables
# (there are more sophisticated solutions to this problem,
# such as saving the model results as an object or table
# and writing them out to text file but let's start simple
# for now)
if (print.model.output == "Y") {
  # Uncorrected accuracy
  print ("##### Uncorrected accuracy: Local #####")
  print(summary(unc.acc.local.model))
  print ("##### Uncorrected accuracy: Cumulative #####")
  print(summary(unc.acc.cumul.model))
  print ("##### Uncorrected accuracy: Local (original Mc & C) #####")
  print(summary(unc.acc.local.orig.model))
  print ("##### Uncorrected accuracy: Cumulative (original Mc & C) #####")
  print(summary(unc.acc.cumul.orig.model))
  # Corrected accracy
  print ("##### Corrected accuracy: Local #####")
  print(summary(cor.acc.local.model))
  print ("##### Corrected accuracy: Cumulative #####")
  print(summary(cor.acc.cumul.model))
  print ("##### Corrected accuracy: Local (original Mc & C) #####")
  print(summary(cor.acc.local.orig.model))
  print ("##### Corrected accuracy: Cumulative (original Mc & C) #####")
  print(summary(cor.acc.cumul.orig.model))
  # Unseen words
  print ("##### Unseen words: Local #####")
  print(summary(uns.wds.local.model))
  print ("##### Unseen words: Cumulative #####")
  print(summary(uns.wds.cumul.model))
}

# For a different kind of project you could also do something like:
# source("1-Prepare-data.R")
# source("2-Analyze-data.R")
# source("3-Plot-results.R")