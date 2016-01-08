
par(mfrow=c(2,2)) 
with(hh, plot(Date, Global_active_power, xlab="", ylab="Global Active Power(kilowatts)", main="", type="l"))

with(hh, plot(Date, Voltage, xlab="datetime", ylab="Voltage", type="l"))

with(hh, plot(Date, Sub_metering_1, typ="l",xlab="", ylab="Energy sub metering")) 
with(hh, points(Date,Sub_metering_2, typ="l",col="red")) 
with(hh, points(Date,Sub_metering_3, typ="l",col="blue")) 
legend("topright", col=c("black", "red","blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, cex=.5, bty="n")

with(hh, plot(Date, Global_reactive_power, type="l", xlab="datetime"))


dev.copy(png, file="plot4.png")
dev.off()