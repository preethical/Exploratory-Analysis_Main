##setwd("~/R/datascience_coursera_main/Exploratory-analysis/Exploratory-Analysis_Main/week1")
library(dplyr)
power_consumption <- read.table("exdata_data_household_power_consumption/household_power_consumption.txt", na.strings = "?", sep = ";", header = TRUE)

## change date and from character vectors to time and date. 

power_consumption$Date <- as.Date(power_consumption$Date, "%d/%m/%Y")
power_consumption$Time <- format(power_consumption$Time, format= "%H:%M:%S")

## Subset the required dates
Power_subset <- subset(power_consumption, Date == "2007-02-01" | Date == "2007-02-02")

##other ways to subset dates
##Power_consumption <- power_consumption[power_consumption$Date %in% c("2007-02-01","2007-02-02"),]
##Power_subset <- power_consumption[power_consumption$Date %in% c("2007-02-01","2007-02-02"),]
##Power_subset <- power_consumption %>% filter(between( Date, 2007-02-01, 2007-02-02))
##Sub_set <- power_consumption[(power_consumption$Date >= "2007-02-01") & (power_consumption$Date <= "2007-02-02")]

png(plot1.png, width=480, height=480)
hist(Power_subset$Global_active_power, col = "Red", border ="black", main = "Global Active Power", xlab ="Global active power(kilowatts)", ylab = "frequency")
dev.off()




