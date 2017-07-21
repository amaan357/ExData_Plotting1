data <- read.table("~/R/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".",na.strings = "?")
data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

png("plot1.png", width=480, height=480)
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()