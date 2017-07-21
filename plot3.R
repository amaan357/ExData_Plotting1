data <- read.table("~/R/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".",na.strings = "?")
data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot3.png", width=480, height=480)
plot(datetime, data$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, data$Sub_metering_2, type="l", col="red")
lines(datetime, data$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty = 1, col=c("black", "red", "blue"))
dev.off()