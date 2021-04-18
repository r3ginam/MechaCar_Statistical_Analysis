# D1: Linear Regression to Predict MPG

library(dplyr)

mpg_table <- read.csv(file='MechaCar_mpg.csv', header=TRUE, sep=",", check.names=FALSE, stringsAsFactors = FALSE)

lm <- lm(formula= mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data= mpg_table)

summary(lm)

# D2: Visualization for Trip Analysis

suspension_table <- read.csv(file='Suspension_Coil.csv', header= TRUE, sep=",", check.names= FALSE, stringsAsFactors = FALSE)

total_summary <- suspension_table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups= 'keep')

lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups= 'keep')

# D3: Technical Analysis

t.test(suspension_table$PSI, mu=1500)

t.test(subset(suspension_table, Manufacturing_Lot=='Lot1')$PSI, mu=1500)
t.test(subset(suspension_table, Manufacturing_Lot=='Lot2')$PSI, mu=1500)
t.test(subset(suspension_table, Manufacturing_Lot=='Lot3')$PSI, mu=1500)
