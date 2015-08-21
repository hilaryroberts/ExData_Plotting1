#read in the data
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)
data$timestamp <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
data1 <- subset(data, data$timestamp >= "2007-02-01 00:00:00" & data$timestamp < "2007-02-03 00:00:00")
data1$Global_active_power <- as.numeric(data1$Global_active_power)

#plot1
hist(data1$Global_active_power, col = "red", main = "GlobalActive Power", xlab = "Global Active Power (Kilowatts)", ylab = "Frequency")
