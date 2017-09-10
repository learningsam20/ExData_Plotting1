infile <- "household_power_consumption.txt"
hpower <- read.table(infile, header = TRUE, sep = ";", colClasses = c(rep("character", 2), rep("numeric", 7)), na.strings = "?")
hpower <- hpower[hpower$Date %in% c("1/2/2007", "2/2/2007"),]
#hpower$Date <- as.factor(strftime(hpower$Date,'%a'))
hpower$Date_Time <- paste(hpower$Date, hpower$Time)
hpower$Date_Time <- strptime(hpower$Date_Time, "%d/%m/%Y %H:%M:%S")
png("Plot2.png")
plot(type="l",y=hpower$Global_active_power,x=hpower$Date_Time,ylab="Global Active Power (kilowatts)",xlab="")
dev.off()