source("importData.R")

png("plot1.png")
hist(feb_1_2_2007$Global_active_power, col = "red", 
     xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()