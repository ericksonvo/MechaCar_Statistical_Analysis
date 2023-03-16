library(tidyverse)
library(dplyr)

# PART 1
# import and read MechaCar_mpg.csv
MechaCar <-read.csv(file="MechaCar_mpg.csv", check.names=F,stringsAsFactors = F)


stuff <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=MechaCar)
summary(stuff)
plt <- ggplot(MechaCar,aes(x=mpg,y=vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD)) 
plt + geom_point()  + geom_smooth(method = "lm", se = FALSE)

stuff0 <- lm(mpg ~ vehicle_length, data=MechaCar)
summary(stuff0)
plt0 <- ggplot(MechaCar,aes(x=mpg,y=vehicle_length)) 
plt0 + geom_point()  + geom_smooth(method = "lm", se = FALSE)

stuff1<- lm(mpg ~ vehicle_weight, data=MechaCar)
summary(stuff1)
plt1 <- ggplot(MechaCar,aes(x=mpg,y=vehicle_weight)) 
plt1 + geom_point()  + geom_smooth(method = "lm", se = FALSE)

stuff2<- lm(mpg ~ spoiler_angle, data=MechaCar)
summary(stuff2)
plt2 <- ggplot(MechaCar,aes(x=mpg,y=spoiler_angle)) 
plt2 + geom_point()  + geom_smooth(method = "lm", se = FALSE)

stuff3<- lm(mpg ~ ground_clearance, data=MechaCar)
summary(stuff3)
plt3 <-  ggplot(MechaCar,aes(x=mpg,y=ground_clearance)) 
plt3 + geom_point()  + geom_smooth(method = "lm", se = FALSE)

stuff4<- lm(mpg ~ AWD, data=MechaCar)
summary(stuff4)
plt4 <-  ggplot(MechaCar,aes(x=mpg,y=AWD)) 
plt4 + geom_point()  + geom_smooth(method = "lm", se = FALSE)

#PART 2
#import and read Suspension_Coil.csv

SCoils <- read.csv(file="Suspension_Coil.csv", check.names=F,stringsAsFactors = F)

total_summary <- summarise(SCoils, mean(PSI), median(PSI),var(PSI),sd(PSI))

lot_summary <- SCoils %>% group_by(Manufacturing_Lot) %>% summarise( mean(PSI), median(PSI),var(PSI),sd(PSI))

#PART 3 
# Determine PSI across all manufactyring lots with mean of 1,500
t.test((SCoils$PSI), mu=1500)
# Determine PSI for each manufacturing lot 1 with population mean of 1500
t.test(subset(SCoils, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
# Determine PSI for each manufacturing lot 2 with population mean of 1500
t.test(subset(SCoils, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
# Determine PSI for each manufacturing lot 3 with population mean of 1500
t.test(subset(SCoils, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)
