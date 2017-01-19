source("importData.R")

png("plot3.png")
plot(feb_1_2_2007$Moment, feb_1_2_2007$Sub_metering_1, col = "black", type = "l",
     ylab = "Energy sub metering", xlab = "")
lines(feb_1_2_2007$Moment, feb_1_2_2007$Sub_metering_2, col = "red")
lines(feb_1_2_2007$Moment, feb_1_2_2007$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2.5,
       legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"))
dev.off()