#read in the data
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)
data$timestamp <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
data1 <- subset(data, data$timestamp >= "2007-02-01 00:00:00" & data$timestamp < "2007-02-03 00:00:00")
data1$Global_active_power <- as.numeric(data1$Global_active_power)

#plot3
plot(data1$timestamp, data1$Sub_metering_1, type = "l", ylab = "Energy Sub Metering", xlab = NA)
lines(data1$timestamp, data1$Sub_metering_2, col = "red")
lines(data1$timestamp, data1$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"))
