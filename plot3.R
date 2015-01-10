png(filename = "F:/coursera/Data Science 4_Exploratory Data Analysis/homework/hw1/plot3.png", width = 480, height = 480,  units = "px")

power <- read.table("F:/coursera/Data Science 4_Exploratory Data Analysis/homework/hw1/household_power_consumption.txt", header = TRUE, stringsAsFactors=FALSE, sep =";")
power1 <- rbind(subset(power, Date == "1/2/2007"), subset(power, Date == "2/2/2007"))
dates <- power1$Date
times <- power1$Time
x <- paste(dates, times)
plot(as.numeric(strptime(x, "%d/%m/%Y %H:%M:%S")), as.numeric(power1$Sub_metering_1), type = "n",
     ylab = "Energy sub metering" , xlab = "", xaxt="n")
lines(as.numeric(strptime(x, "%d/%m/%Y %H:%M:%S")), as.numeric(power1$Sub_metering_1), type = "l", col = "black")
lines(as.numeric(strptime(x, "%d/%m/%Y %H:%M:%S")), as.numeric(power1$Sub_metering_2), type = "l", col = "red")
lines(as.numeric(strptime(x, "%d/%m/%Y %H:%M:%S")), as.numeric(power1$Sub_metering_3), type = "l", col = "blue")
label_x <- c("1/2/2007 00:00:00", "2/2/2007 00:00:00", "3/2/2007 00:00:00")
axis(side=1, at=c(as.numeric(strptime(label_x, "%d/%m/%Y %H:%M:%S"))),labels = c("Thu", "Fri", "Sat"))
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()