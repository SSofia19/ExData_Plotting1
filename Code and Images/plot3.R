
with(hh, plot(Date, Sub_metering_1, typ="l",ylab="Energy sub metering")) 
with(hh, points(Date,Sub_metering_2, typ="l",col="red")) 
with(hh, points(Date,Sub_metering_3, typ="l",col="blue")) 
legend("topright", col=c("black", "red","blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, cex=.75)
dev.copy(png, file="plot3.png")
dev.off()