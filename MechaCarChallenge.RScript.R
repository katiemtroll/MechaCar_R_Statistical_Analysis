# Deliverable 1
#1. use library() to load dplyr package
library(dplyr)

#2. Import and read in the MechaCar_mpg.csv as a dataframe
library(tidyverse)
mecha_mpg <- read.csv(file='Resources/MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

#3. Peform linear regression using lm(). Pass all six columns (variables) and add the dataframe created in the previous step.
mecha_mpg_lm = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_mpg)

#4. Use summary() to determine the p-value and the r-squared value
summary(mecha_mpg_lm)
# returned p-value of 5.35e-11 and r-squared of 0.7149, with adjusted r-squared of 0.6825.
