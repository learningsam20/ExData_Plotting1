infile <- "household_power_consumption.txt"
hpower <- read.table(infile, header = TRUE, sep = ";", colClasses = c(rep("character", 2), rep("numeric", 7)), na.strings = "?")
hpower <- hpower[hpower$Date %in% c("1/2/2007", "2/2/2007"),]
png("Plot1.png",width=480, height=480)
hist(power$Global_active_power,col='red',xlab="Global Active Power (kilowatts)",main="Global Active Power",ylab="Frequency")
dev.off()