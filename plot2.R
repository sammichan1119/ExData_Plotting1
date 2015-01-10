png(filename = "F:/coursera/Data Science 4_Exploratory Data Analysis/homework/hw1/plot2.png", width = 480, height = 480,  units = "px")

power <- read.table("F:/coursera/Data Science 4_Exploratory Data Analysis/homework/hw1/household_power_consumption.txt", header = TRUE, stringsAsFactors=FALSE, sep =";")
power1 <- rbind(subset(power, Date == "1/2/2007"), subset(power, Date == "2/2/2007"))
dates <- power1$Date
times <- power1$Time
x <- paste(dates, times)
plot(as.numeric(strptime(x, "%d/%m/%Y %H:%M:%S")), as.numeric(power1$Global_active_power),type = "n",
     ylab = "Global Active Power (kilowatts)" , xlab = "", xaxt="n")
lines(as.numeric(strptime(x, "%d/%m/%Y %H:%M:%S")), as.numeric(power1$Global_active_power), type = "l")
label_x <- c("1/2/2007 00:00:00", "2/2/2007 00:00:00", "3/2/2007 00:00:00")
axis(side=1, at=c(as.numeric(strptime(label_x, "%d/%m/%Y %H:%M:%S"))),labels = c("Thu", "Fri", "Sat"))
                  
dev.off()