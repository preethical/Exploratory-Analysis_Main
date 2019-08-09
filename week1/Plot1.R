
## Utility functions have been extracted into another file for reuse across 
## the multiple files in this assignment. Please see the following utility 
## R file to explore their contents.
source(here::here("Assignment1_utilities.R"))

png("plot1.png", width=480, height=480)
hist(Power_subset$Global_active_power, col = "Red", border ="black", main = "Global Active Power", xlab ="Global active power(kilowatts)", ylab = "frequency")
dev.off()




