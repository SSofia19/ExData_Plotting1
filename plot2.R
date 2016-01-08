
hh$Date <- paste(hh$Date, hh$Time)
hh$Date <- strptime(hh$Date, format="%Y-%m-%d %H:%M:%S")

with(hh, plot(Date, Global_active_power,xlab="", ylab="Global Active Power(kilowatts)", main="", type="l"))

dev.copy(png, file="plot2.png")
dev.off()