# D 1: Linear Regression to Predict MPG

library(dplyr)

mpg_table <- read.csv(file='MechaCar_mpg.csv', header=TRUE, sep=",", check.names=FALSE, stringsAsFactors = FALSE)

lm <- lm(formula= mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data= mpg_table)

summary(lm)

# D 2: Visualization for Trip Analysis

suspension_table <- read.csv(file='Suspension_Coil.csv', header= TRUE, sep=",", check.names= FALSE, stringsAsFactors = FALSE)

total_summary <- suspension_table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups= 'keep')

lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups= 'keep')
