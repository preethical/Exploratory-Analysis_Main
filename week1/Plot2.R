library(dplyr)
source(here::here("Assignment1_utilities.R"))

Power_subset$datetime <- strptime(paste(Power_subset$Date, Power_subset$Time), "%Y-%m-%d %H:%M:%S")

Power_subset$datetime <- as.POSIXct(Power_subset$datetime)

png("Plot2.png", width = 480, height = 480)

plot(x=Power_subset$datetime, y=Power_subset$Global_active_power, type="l", xlab = "", ylab = "Global Active Power(kilowatts)")

dev.off()
