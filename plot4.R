source("importData.R")

png("plot4.png")
par(mfrow = c(2, 2))

plot(feb_1_2_2007$Moment, feb_1_2_2007$Global_active_power, type = "l",
     ylab = "Global Active Power", xlab = "Date")

plot(feb_1_2_2007$Moment, feb_1_2_2007$Voltage, type = "l",
     xlab = "Date", ylab = "Voltage")

plot(feb_1_2_2007$Moment, feb_1_2_2007$Sub_metering_1, col = "black", type = "l",
     ylab = "Energy sub metering", xlab = "Date")
lines(feb_1_2_2007$Moment, feb_1_2_2007$Sub_metering_2, col = "red")
lines(feb_1_2_2007$Moment, feb_1_2_2007$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2.5,
       legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"), bty = "n")

plot(feb_1_2_2007$Moment, feb_1_2_2007$Global_reactive_power, type = "l",
     ylab = "Global Reactive Power", xlab = "Date")

par(mfrow = c(1, 1))
dev.off()