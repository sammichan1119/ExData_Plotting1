png(filename = "F:/coursera/Data Science 4_Exploratory Data Analysis/homework/hw1/plot1.png", width = 480, height = 480,  units = "px")
power <- read.table("F:/coursera/Data Science 4_Exploratory Data Analysis/homework/hw1/household_power_consumption.txt", header = TRUE, stringsAsFactors=FALSE, sep =";")
power1 <- rbind(subset(power, Date == "1/2/2007"), subset(power, Date == "2/2/2007"))
hist(as.numeric(power1$Global_active_power), main = "Global Active Power", xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency", col="red")
dev.off()