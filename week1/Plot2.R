library(dplyr)
source(here::here("Assignment1_utilities.R"))

png("Plot2.png", width = 480, height = 480)

plot(x=Power_subset$datetime, y=Power_subset$Global_active_power, type="l", xlab = "", ylab = "Global Active Power(kilowatts)")

dev.off()
