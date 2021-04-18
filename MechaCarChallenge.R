# D 1: Linear Regression to Predict MPG

library(dplyr)

mpg_table <- read.csv(file='MechaCar_mpg.csv', header=TRUE, sep=",", check.names=FALSE, stringsAsFactors = FALSE)

lm <- lm(formula= mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data= mpg_table)

summary(lm)
