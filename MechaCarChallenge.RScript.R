# Deliverable 1: Linear Regression to Predict MPG
#1. use library() to load dplyr package
library(dplyr)

#2. Import and read in the MechaCar_mpg.csv as a dataframe
library(tidyverse)
mecha_mpg <- read.csv(file='Resources/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

#3. Peform linear regression using lm(). Pass all six columns (variables) and add the dataframe created in the previous step.
mecha_mpg_lm = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_mpg)

#4. Use summary() to determine the p-value and the r-squared value
summary(mecha_mpg_lm)
# returned p-value of 5.35e-11 and r-squared of 0.7149, with adjusted r-squared of 0.6825.


# Deliverable 2: Create Visualizations for the Trip Analysis
#1. Import and read in the Suspension_Coil.csv file as a table
mecha_suspension <- read.csv(file='Resources/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

#2. Create a total_summary dataframe that summarizes mean, median, variance, sd of PSI column
total_summary <- mecha_suspension %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups='keep')

#3. Create a lot_summary df using group_by and summarize to group by manufacturing lot on PSI column.
lot_summary <- mecha_suspension %>% group_by(Manufacturing_Lot) %>% summarize(No_of_Coils = n(), Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups='keep')


# Deliverable 3: T-Tests on Suspension Coils
#1. Determine if all lots are statistically different from the population mean of 1500 psi
allt = t.test(mecha_suspension$PSI, mu=1500)

#2. Use t.test() function 3 more times with subset() to determine if psi for each manufacturing lot is statistically different from the pop. mean of 1500 psi
lot1 <- subset(mecha_suspension, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_suspension, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_suspension, Manufacturing_Lot=="Lot3")

lot1_t = t.test(lot1$PSI,mu=1500)
lot2_t = t.test(lot2$PSI,mu=1500)
lot3_t = t.test(lot3$PSI,mu=1500)

