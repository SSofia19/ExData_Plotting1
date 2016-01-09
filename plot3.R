#Creates graph with the Sub Metering column, only one column can be added at a time
with(hh, plot(Date, Sub_metering_1, typ="l",ylab="Energy sub metering")) 
#Adds additional column
with(hh, points(Date,Sub_metering_2, typ="l",col="red"))
#Adds last column of data
with(hh, points(Date,Sub_metering_3, typ="l",col="blue")) 
#Creates legend with lines, col is the color the lines lty is the lines.  Cex makes the legend smaller
legend("topright", col=c("black", "red","blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, cex=.75)

#Creates a png of the graph
dev.copy(png, file="plot3.png")
dev.off()