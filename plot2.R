source("importData.R")

png("plot2.png")
plot(feb_1_2_2007$Moment, feb_1_2_2007$Global_active_power, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()