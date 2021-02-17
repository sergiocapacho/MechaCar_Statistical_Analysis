library(readr)
MechaCar_mpg <- read_csv("MechaCar_mpg.csv")
lm(vehicle_length~vehicle_weight+spoiler_angle+ground_clearance+AWD+mpg, data=MechaCar_mpg)
summary(lm(mpg~vehicle_weight+spoiler_angle+ground_clearance+AWD+vehicle_length, data=MechaCar_mpg))

library(readr)
Suspension_Coil <- read_csv("Suspension_Coil.csv")
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>%
summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))