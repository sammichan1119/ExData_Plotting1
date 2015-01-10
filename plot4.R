png(filename = "F:/coursera/Data Science 4_Exploratory Data Analysis/homework/hw1/plot4.png", width = 480, height = 480,  units = "px")
par(mfrow = c(2,2))

# read data
power <- read.table("F:/coursera/Data Science 4_Exploratory Data Analysis/homework/hw1/household_power_consumption.txt", header = TRUE, stringsAsFactors=FALSE, sep =";")
power1 <- rbind(subset(power, Date == "1/2/2007"), subset(power, Date == "2/2/2007"))
dates <- power1$Date
times <- power1$Time
x <- paste(dates, times)

# draw 1st pic
plot(as.numeric(strptime(x, "%d/%m/%Y %H:%M:%S")), as.numeric(power1$Global_active_power),type = "n",
     ylab = "Global Active Power" , xlab = "", xaxt="n")
lines(as.numeric(strptime(x, "%d/%m/%Y %H:%M:%S")), as.numeric(power1$Global_active_power), type = "l")
label_x <- c("1/2/2007 00:00:00", "2/2/2007 00:00:00", "3/2/2007 00:00:00")
axis(side=1, at=c(as.numeric(strptime(label_x, "%d/%m/%Y %H:%M:%S"))),labels = c("Thu", "Fri", "Sat"))

# draw 2nd pic
plot(as.numeric(strptime(x, "%d/%m/%Y %H:%M:%S")), as.numeric(power1$Voltage),type = "n",
     ylab = "Voltage" , xlab = "datetime", xaxt="n")
lines(as.numeric(strptime(x, "%d/%m/%Y %H:%M:%S")), as.numeric(power1$Voltage), type = "l", lwd = 0.5)
label_x <- c("1/2/2007 00:00:00", "2/2/2007 00:00:00", "3/2/2007 00:00:00")
axis(side=1, at=c(as.numeric(strptime(label_x, "%d/%m/%Y %H:%M:%S"))),labels = c("Thu", "Fri", "Sat"))

# draw 3rd pic
plot(as.numeric(strptime(x, "%d/%m/%Y %H:%M:%S")), as.numeric(power1$Sub_metering_1), type = "n",
     ylab = "Energy sub metering" , xlab = "", xaxt="n")
lines(as.numeric(strptime(x, "%d/%m/%Y %H:%M:%S")), as.numeric(power1$Sub_metering_1), type = "l", col = "black")
lines(as.numeric(strptime(x, "%d/%m/%Y %H:%M:%S")), as.numeric(power1$Sub_metering_2), type = "l", col = "red")
lines(as.numeric(strptime(x, "%d/%m/%Y %H:%M:%S")), as.numeric(power1$Sub_metering_3), type = "l", col = "blue")
label_x <- c("1/2/2007 00:00:00", "2/2/2007 00:00:00", "3/2/2007 00:00:00")
axis(side=1, at=c(as.numeric(strptime(label_x, "%d/%m/%Y %H:%M:%S"))),labels = c("Thu", "Fri", "Sat"))
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n")

# draw 4th pic
plot(as.numeric(strptime(x, "%d/%m/%Y %H:%M:%S")), as.numeric(power1$Global_reactive_power),type = "n",
     ylab = "Global_reactive_power" , xlab = "datetime", xaxt="n")
lines(as.numeric(strptime(x, "%d/%m/%Y %H:%M:%S")), as.numeric(power1$Global_reactive_power), type = "l", lwd = 0.5)
label_x <- c("1/2/2007 00:00:00", "2/2/2007 00:00:00", "3/2/2007 00:00:00")
axis(side=1, at=c(as.numeric(strptime(label_x, "%d/%m/%Y %H:%M:%S"))),labels = c("Thu", "Fri", "Sat"))

dev.off()