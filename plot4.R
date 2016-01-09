#Creates 4 graphs
par(mfrow=c(2,2))
#Graph one from part two
with(hh, plot(Date, Global_active_power, xlab="", ylab="Global Active Power(kilowatts)", main="", type="l"))
#Graph two
with(hh, plot(Date, Voltage, xlab="datetime", ylab="Voltage", type="l"))
#Graph three, each additional points line adds another column of data into the graph
with(hh, plot(Date, Sub_metering_1, typ="l",xlab="", ylab="Energy sub metering")) 
with(hh, points(Date,Sub_metering_2, typ="l",col="red")) 
with(hh, points(Date,Sub_metering_3, typ="l",col="blue")) 
#Creates the legend, the colors are for the lines, changed cex to make the legend smaller, bty="n" takes off the border
legend("topright", col=c("black", "red","blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, cex=.5, bty="n")
#Graph four
with(hh, plot(Date, Global_reactive_power, type="l", xlab="datetime"))

#Saves the graph as  a png
dev.copy(png, file="plot4.png")
dev.off()