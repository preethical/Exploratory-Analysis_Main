source(here::here("Assignment1_utilities.R"))
png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))

plot(x=Power_subset$datetime, y=Power_subset$Global_active_power, type="l", xlab = "", ylab = "Global Active Power(kilowatts)")

plot(x=Power_subset$datetime, y=Power_subset$Voltage, type ="l", xlab="datetime", ylab = "Voltage")

plot(x=Power_subset$datetime,y=Power_subset$Sub_metering_1,type= "l", col = "black",xlab ="", ylab = "Global active power(kilowatts)")
lines(x=Power_subset$datetime,y=Power_subset$Sub_metering_2,col = "red")
lines(x=Power_subset$datetime,y=Power_subset$Sub_metering_3,col = "blue")
legend("topright",
       legend=c("sub_metering_1", "sub_metering_2", "sub_metering_3"),
       col = c("black","red","blue"), text.col= c("black","red","blue"))

plot(x=Power_subset$datetime, y=Power_subset$Global_reactive_power, type="l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()
